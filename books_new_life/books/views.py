from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView
from .models import Books


class IndexView(ListView):
    model = Books
    template_name = 'index.html'


class BookdetailsView(DetailView):
    model = Books
    template_name = 'book_details.html'


class Add_BookView(CreateView):
    model = Books
    template_name = 'add_book.html'
    fields = ('usuario', 'titulo', 'categoria',
              'estado', 'autor', 'reseña', 'libro_img')


class Update_bookView(UpdateView):
    model = Books
    template_name = 'update_book.html'
    fields = '__all__'

    def get_queryset(self):
        user = self.request.user
        return Books.objects.filter(name=user)
