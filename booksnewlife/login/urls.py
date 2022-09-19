from django.contrib import admin
from django.urls import path
from . import view

urlpatterns = [
    path("signup/", view.signup, name='signup'),
    path('test/', view.test, name='test')

]
