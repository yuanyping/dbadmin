from django.shortcuts import render,redirect

# Create your views here.
from user_fun import pub
from db import models
@pub.check_user_login
def dbadd(request):
    my_name =  request.session.get("user_key", None)
    info = {"my_name": my_name}
    if request.method == "GET":
        return  render(request, "dbadd.html", info)
    else:
        db_ip = request.POST.get("db_ip")
        db_user = request.POST.get("db_user")
        db_password = request.POST.get("db_password")
        db_name = request.POST.get("db_name")
        db_v = request.POST.get("db_v")
        db_prefix = request.POST.get("db_prefix")
        db_type = request.POST.get("db_type")
        models.db_info.objects.create(db_ip=db_ip,db_user=db_user,db_password=db_password,db_prefix=db_prefix,db_name=db_name,db_v=db_v,db_type=db_type)
        info["result"] = "The database was created successfully "
        return render(request, "dbadd.html", info)
@pub.check_user_login
def dbadmin(request):
    my_name = request.session.get("user_key", None)
    db_list = models.db_info.objects.values("id","db_name","db_ip","db_user","db_prefix","db_v")
    return render(request,"dbadmin.html",{"db_list":db_list,"my_name": my_name})

def dbdel(request):
    id  = request.GET.get("id")
    models.db_info.objects.filter(id=id).delete()
    return redirect("/db/dbadmin/")

def dbupdate(request):
    if request.method =="GET":
        id = request.GET.get("id")
        db_info = models.db_info.objects.filter(id=id).values("db_name","db_prefix","db_v","db_password","db_user","db_ip")[0]
        return render(request,"dbupdate.html",{"db_id":id,"db_info":db_info,"my_name": request.session.get("user_key", None)})
    else:
        id = request.POST.get("id")
        db_ip = request.POST.get("db_ip")
        db_user = request.POST.get("db_user")
        db_password = request.POST.get("db_password")
        db_name = request.POST.get("db_name")
        db_v = request.POST.get("db_v")
        db_prefix = request.POST.get("db_prefix")
        models.db_info.objects.filter(id=id).update(db_user=db_user,db_password=db_password,db_ip=db_ip,db_v=db_v,db_prefix=db_prefix,db_name=db_name)
        return  redirect("/db/dbadmin/")
import  pymysql
import os
import subprocess
import sys
import time
def dbconn(db_ip,db_user,db_password,db_name,sql,db_coding):
    conn = pymysql.connect(host=db_ip, user=db_user, password=db_password, database=db_name,charset=db_coding)
    cursor = conn.cursor(cursor=pymysql.cursors.DictCursor)
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    conn.close()
    return result


def dbfun(request):
    id =  request.GET.get("id")
    db_info = models.db_info.objects.filter(id=id).values()[0]
    db_type = db_info["db_type"]
    db_prefix = db_info["db_prefix"]
    db_v = db_info["db_v"]
    if db_type == "jilang":
        if request.method == "GET":
            return render(request,"db_jilang.html",{"my_name":request.session.get("user_key", None)})
        else:
            if request.POST.get("fun_num") == "1":
                zone_num =  request.POST.get("zone_num")
                alliance_name = "%" + "%".join(request.POST.get("alliance_name")[0:3])   + "%"
                db_name = db_prefix + zone_num
                sql = "select level,exp,name,password from alliance where name like '%s'" %(alliance_name)
                result = dbconn(db_info["db_ip"],db_info["db_user"],db_info["db_password"],db_name,sql,"utf8mb4")
                log_message = "查询%s的联盟密码" % (request.POST.get("alliance_name"))
                log_user = request.session.get("user_key", None)
                db_log(log_user, log_message)
                return render(request, "db_jilang.html", {"my_name": request.session.get("user_key", None),"result1":result})
            elif request.POST.get("fun_num") == "2":
                zone_num = request.POST.get("zone_num")
                db_name = db_prefix + zone_num
                BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
                file_path = os.path.join(BASE_DIR,'static')
                MYSQL_CMD="/usr/local/%s" %(db_v)
                subprocess.call('%s/bin/mysqldump --single-transaction -u%s -p%s -h %s --databases %s >%s/sql/%s.sql'
                                %(MYSQL_CMD,db_info["db_user"], db_info["db_password"], db_info["db_ip"], db_name, file_path,
                                   db_name)                                \
                                ,shell=True,stdin=sys.stdin, stdout=sys.stdout \
                                                                    )
                result = "/static/sql/%s.sql" %(db_name)
                log_message = "导出数据 %s" %(db_name)
                log_user = request.session.get("user_key", None)
                db_log(log_user,log_message)
                return render(request, "db_jilang.html",
                              {"my_name": request.session.get("user_key", None), "result2": result})
    elif db_type == "kuailaiwan":
        if request.method == "GET":
            return render(request,"db_kuailaiwan.html",{"my_name":request.session.get("user_key", None)})
        else:
            if request.POST.get("fun_num") == "1":
                zone_num = request.POST.get("zone_num")
                db_name = db_prefix + zone_num
                sql="SELECT Level,SUM(Level) as level_num FROM RoleData GROUP BY Level"
                result = dbconn(db_info["db_ip"], db_info["db_user"], db_info["db_password"], db_name, sql, "latin1")
                # print(result)
                return render(request, "db_kuailaiwan.html", {"my_name": request.session.get("user_key", None),"result1":result})
            elif request.POST.get("fun_num") == "2":
                zone_num = request.POST.get("zone_num")
                db_name = "world_log_1_" + zone_num
                player_time = "".join(request.POST.get("player_time")[2:].split("-"))
                sql = "SELECT COUNT(DISTINCT Uin) as player_login_count FROM LogRoleLogin_%s" %(player_time)
                result = dbconn(db_info["db_ip"], db_info["db_user"], db_info["db_password"], db_name, sql, "latin1")
                # print(result)
                return render(request, "db_kuailaiwan.html",
                              {"my_name": request.session.get("user_key", None), "result2": result})
            elif request.POST.get("fun_num") == "3":
                zone_num = request.POST.get("zone_num")
                db_name = db_prefix + zone_num
                user_uin =  request.POST.get("user_uin")
                sql = "SELECT Uin,PingTaiSeq,RMB,Type,IsGet,LogTime FROM `ChargeSucLog` WHERE Uin=%s" %(user_uin)
                result = dbconn(db_info["db_ip"], db_info["db_user"], db_info["db_password"], db_name, sql, "latin1")
                # print(result)
                return render(request, "db_kuailaiwan.html",
                              {"my_name": request.session.get("user_key", None), "result3": result})
            elif request.POST.get("fun_num") == "4":
                zone_num = request.POST.get("zone_num")
                db_name = db_prefix + zone_num
                user_uin = request.POST.get("user_uin")
                BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
                file_path = os.path.join(BASE_DIR, 'static')
                MYSQL_CMD = "/usr/local/%s" % (db_v)
                subprocess.call('%s/bin/mysqldump --single-transaction --single-transaction \
                        --set-gtid-purged=OFF \
                        --triggers --routines --default-character-set=latin1 --hex-blob -u%s -p%s -h %s %s RoleData --where "Uin=%s" >%s/sql/%s.sql'
                                % (MYSQL_CMD, db_info["db_user"], db_info["db_password"], db_info["db_ip"], db_name,user_uin,file_path,
                                   db_name) \
                                , shell=True, stdin=sys.stdin, stdout=sys.stdout \
                                )
                result = "/static/sql/%s.sql" % (db_name)
                # print(result)
                return render(request, "db_kuailaiwan.html",
                              {"my_name": request.session.get("user_key", None), "result4": result})

            elif request.POST.get("fun_num") == "5":
                zone_num = request.POST.get("zone_num")
                db_name = db_prefix + zone_num
                player_name = request.POST.get("player_name")
                sql = 'SELECT Uin,RoleName FROM RoleData WHERE RoleName="%s" ' %(player_name)
                result = dbconn(db_info["db_ip"], db_info["db_user"], db_info["db_password"], db_name, sql, "latin1")
                # print(result)
                return render(request, "db_kuailaiwan.html",
                              {"my_name": request.session.get("user_key", None), "result5": result})
            elif request.POST.get("fun_num") == "6":
                pass


def db_log(log_user,log_message):
    models.log_info.objects.create(log_user=log_user,log_message=log_message,log_time=time.time())