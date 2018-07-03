from django.db import models

# Create your models here.

class user_info(models.Model):
    user_name =  models.CharField(max_length=32)
    user_password = models.CharField(max_length=255)
    user_email = models.CharField(max_length=255,null=True )
class db_info(models.Model):
    db_name =  models.CharField(max_length=255)
    db_ip = models.CharField(max_length=255)
    db_user =  models.CharField(max_length=255)
    db_password = models.CharField(max_length=255)
    db_prefix = models.CharField(max_length=255)
    db_v = models.CharField(max_length=255)
    db_type = models.CharField(max_length=32,null=True)

class log_info(models.Model):
    log_message =  models.CharField(max_length=255)
    log_user =  models.CharField(max_length=32)
    log_time = models.CharField(max_length=255)

# class work(models.Model):
#     w_title =  models.CharField(max_length=255)
#     w_time = models.CharField(max_length=255)
#     w_content =  models.TextField()
#