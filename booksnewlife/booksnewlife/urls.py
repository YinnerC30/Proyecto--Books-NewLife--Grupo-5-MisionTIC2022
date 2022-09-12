from unicodedata import name
from . import view

from django.contrib import admin
from django.urls import path

urlpatterns = [
    path("admin/", admin.site.urls),
    path("",view.index,name='index'),
    path("signup/",view.signup,name='signup'),
    path("login/",view.login,name='login'),
    path("recover/",view.recover,name='recover')
]
