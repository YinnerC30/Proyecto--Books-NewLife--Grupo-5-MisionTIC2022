from django.urls import path
from .views import IndexView, BookdetailsView, Add_BookView, UpdateView, DeleteBookView

urlpatterns = [
    path("", IndexView.as_view(), name='index'),
    path("book/<int:pk>", BookdetailsView.as_view(), name='book_details'),
    path("add_book/", Add_BookView.as_view(), name='add_book'),
    path("book/<int:pk>/edit", UpdateView.as_view(), name='update_book'),
    path("book/<int:pk>/delete", DeleteBookView.as_view(), name='delete_book'),


]
