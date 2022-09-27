
from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Books, Categorias
from .forms import AddBookform


class IndexView(ListView):
    model = Books
    template_name = 'index.html'
    ordering = ['-fecha']

    def get_context_data(self, *args, **kwargs):

        categories_menu = Categorias.objects.all()
        context = super(IndexView, self).get_context_data(*args, **kwargs)
        context['categories_menu'] = categories_menu

        return context


class BookdetailsView(DetailView):
    model = Books
    template_name = 'book_details.html'


class Add_BookView(CreateView):
    form_class = AddBookform

    model = Books
    template_name = 'add_book.html'


class Update_bookView(UpdateView):
    model = Books
    template_name = 'update_book.html'
    fields = ['titulo', 'reseña', 'autor']


class DeleteBookView(DeleteView):
    model = Books
    template_name = 'delete_book.html'
    success_url = reverse_lazy('index')


def CategoryView(request, cat):
    args = {}
    category_books = Books.objects.filter(categoria=cat.replace('-', " "))

    print(category_books)

    return render(request, 'categories.html', {'cat': cat,
                                               'category_books': category_books})
