from django import forms
from .models import Books, Categorias


categorias = Categorias.objects.all().values_list('categoria', 'categoria')
categorias_list = []

for categoria in categorias:
    categorias_list.append(categoria)

estados = [('Excelente', 'Excelente'),
           ('Bueno', 'Bueno'), ('Regular', 'Regular')]
estados_list = []

for estado in estados:
    estados_list.append(estado)


class AddBookform(forms.ModelForm):
    model = Books

    titulo = forms.CharField(max_length=150, label='',  widget=forms.TextInput(
        attrs={'placeholder': 'Titulo', 'class': 'form-input'}),)

    categoria = forms.ChoiceField(choices=categorias_list, label='', widget=forms.Select(
        attrs={'class': 'form-input'}))

    estado = forms.ChoiceField(choices=estados_list, label='', widget=forms.Select(
        attrs={'class': 'form-input',
               }),)

    autor = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Autor', 'class': 'form-input'}), )

    class Meta:
        model = Books
        fields = ('titulo', 'categoria',
                  'estado', 'autor', 'reseña', 'libro_img')
