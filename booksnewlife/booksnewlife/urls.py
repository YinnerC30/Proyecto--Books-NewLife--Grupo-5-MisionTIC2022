from . import views
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", views.index, name='index'),


    path("recover/", views.recover, name='recover'),
    path("about/", views.about, name='about'),
    path("", include('profiles.urls'))




]
