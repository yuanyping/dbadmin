from django.shortcuts import render,redirect
from db import  models
# Create your views here.
def check_user_login(func):
    def wrapper(request, *args, **kwargs):
        if request.session.get("user_key", None) == None:
            return render(request, "login.html")
        return func(request, *args, **kwargs)
    return wrapper


def login(request):


    if request.method == "GET":
        user_status = models.user_info.objects.filter(user_name="admin", user_password="admin123").count()
        print(user_status)
        if user_status == 0:
            models.user_info.objects.create(user_password="admin123",user_name="admin")
        if request.session.get("user_key", None) == None:
            return render(request, "login.html")
        else:
            info={"my_name":request.session.get("user_key", None)}
            return render(request, "welcome.html",info)
    else:
        user_name = request.POST.get("user_name")
        user_password = request.POST.get("user_password")
        user_status = models.user_info.objects.filter(user_name=user_name,user_password=user_password).count()
        if user_status == 0 :
            user_error = "username or password errors"
            info = {"user_error":user_error}
            return render(request, "login.html",info)
        else:
            request.session["user_key"] = user_name
            info = {"my_name":user_name}
            return render(request, "welcome.html", info)


def loginout(request):
    del request.session["user_key"]
    return  redirect("/user/login/")

@check_user_login
def useradd(request):
    user_name = request.session.get("user_key")
    info={"my_name":user_name}
    if request.method == "GET":
        return render(request,"useradd.html",info)
    else:
        user = request.POST.get("user_name")
        password = request.POST.get("user_password")
        email = request.POST.get("user_email")
        user_status = models.user_info.objects.filter(user_name=user).count()
        print(user_status)
        if user_status == 0:
            models.user_info.objects.create(user_name=user,user_password=password,user_email=email)
            info["result"]="create user ok"
            return render(request, "useradd.html", info)
        else:
            info["result"] = "The user already exists"
            return render(request,"useradd.html",info)

@check_user_login
def useradmin(request):
    info=models.user_info.objects.values("id","user_name","user_email")
    #print(info)
    user_status={"user_info":request.session.get("user_key", None)}
    # print(info[0])
    return render(request,"useradmin.html",{"info":info,"my_name":request.session.get("user_key", None)})
@check_user_login
def userdel(request):
    id = int(request.GET.get("id"))
    if isinstance(id,int):
        models.user_info.objects.filter(id=id).delete()

    return redirect("/user/useradmin/")

@check_user_login
def userupdate(request):
    user_name = request.session.get("user_key")
    if request.method == "GET":
        id = request.GET.get("id")
        userinfo=models.user_info.objects.filter(id=id).values()
        info = userinfo[0]
        info["my_name"] = user_name

        return  render(request,"userupdate.html",info)
    else:
        user_password=request.POST.get("user_password")
        user_email = request.POST.get("user_email")
        id = request.POST.get("id")
        models.user_info.objects.filter(id=id).update(user_password=user_password,user_email=user_email)
        return redirect('/user/useradmin/')

def userlog(request):
    user_name = request.session.get("user_key")
    result = models.log_info.objects.values().order_by("-id")[:20]
    print(result)
    return render(request,"userlog.html",{"user_name":user_name,"info":result})



