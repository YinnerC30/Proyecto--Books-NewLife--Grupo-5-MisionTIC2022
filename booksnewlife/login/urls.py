from django.contrib import admin
from django.urls import path
from . import view
from django.contrib.auth import views as auth_views

urlpatterns = [
    path("signup/", view.signup, name='signup'),
    path('test/', view.test, name='test'),
    path("login/", view.login, name='login'),

    path("login2/", auth_views.LoginView.as_view(template_name='login.html'), name='login2'),

    path("logout2/", auth_views.LoginView.as_view(), name='logout2')

]
