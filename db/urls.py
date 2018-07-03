from django.contrib import admin
from django.urls import path
from db import views

urlpatterns = [
    path('dbadd/',views.dbadd),
    path('dbadmin/',views.dbadmin),
    path('dbdel/',views.dbdel),
    path('dbupdate/',views.dbupdate),
    path('dbfun/',views.dbfun),
]
