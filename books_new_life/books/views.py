from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Books
from .forms import AddBookform


class IndexView(ListView):
    model = Books
    template_name = 'index.html'
    ordering = ['-fecha']


class BookdetailsView(DetailView):
    model = Books
    template_name = 'book_details.html'


class Add_BookView(CreateView):
    form_class = AddBookform

    model = Books
    template_name = 'add_book.html'
    fields = '__all__'


class Update_bookView(UpdateView):
    template_name = 'update_book.html'
    fields = ['titulo', 'reseña', 'autor']
    book = Books.objects.all()


class DeleteBookView(DeleteView):
    model = Books
    template_name = 'delete_book.html'
    success_url = reverse_lazy('index')
