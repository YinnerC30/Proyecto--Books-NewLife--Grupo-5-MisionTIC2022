from django.shortcuts import render, redirect
from .models import Book
from django.contrib import admin


def signup(request):

    return render(request=request, template_name="signup.html", )


def login(request):

    return render(request=request, template_name="login.html", )


admin.site.register(Book)
