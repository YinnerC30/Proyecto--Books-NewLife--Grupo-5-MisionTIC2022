from django.urls import path
from .views import IndexView, BookdetailsView, Add_BookView, UpdateView

urlpatterns = [
    path("", IndexView.as_view(), name='index'),
    path("book/<int:pk>", BookdetailsView.as_view(), name='book_details'),
    path("add_book/", Add_BookView.as_view(), name='add_book'),
    path("book/edit/<int:pk>", UpdateView.as_view(), name='update_book'),



]
