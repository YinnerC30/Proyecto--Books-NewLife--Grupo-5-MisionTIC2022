from django.urls import path
from . import views
from .views import indexView

urlpatterns = [
    path("", views.indexView.as_view(), name='index')


]
