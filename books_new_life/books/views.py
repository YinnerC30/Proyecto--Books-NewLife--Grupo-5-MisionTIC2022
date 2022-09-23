from django.shortcuts import render
from django.views.generic import ListView, DetailView
from .models import Books


class indexView(ListView):
    model = Books
    template_name = 'index.html'
