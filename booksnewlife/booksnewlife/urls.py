from unicodedata import name
from . import view

from django.contrib import admin
from django.urls import path
from django.urls import include
urlpatterns = [
    path("admin/", admin.site.urls),
    path("", view.index, name='index'),

    path("login/", view.login, name='login'),
    path("recover/", view.recover, name='recover'),
    path("about/", view.about, name='about'),
    path('', include('login.urls'))

]
