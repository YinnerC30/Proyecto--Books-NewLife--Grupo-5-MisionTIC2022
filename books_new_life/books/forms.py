from pyexpat import model
from django import forms
from .models import Books


class AddBookform(forms.ModelForm):
    model = Books

    titulo = forms.CharField(max_length=150,  widget=forms.TextInput(
        attrs={'placeholder': 'Titulo', 'class': 'form-input'}),)

    autor = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Autor', 'class': 'form-input'}), )

    reseña = forms.CharField(max_length=800, label='', widget=forms.Textarea(
        attrs={'placeholder': 'Agrega una breve reseña...', 'class': 'form-input'}), )

    class Meta:
        model = Books
        fields = ('usuario', 'titulo', 'categoria',
                  'estado', 'autor', 'reseña', 'libro_img')
