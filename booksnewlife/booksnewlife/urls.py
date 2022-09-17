from unicodedata import name
from . import view

from django.contrib import admin
from django.urls import path
from django.urls import include
urlpatterns = [
    path("admin/", admin.site.urls),
    path("",view.index,name='index'),
    path("signup/",view.signup,name='signup'),
    path("login/",view.login,name='login'),
    path("recover/",view.recover,name='recover'),
    path("about/",view.about,name='about'),
    path('login/',include('login.urls'))
    
]
