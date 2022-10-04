from logging import PlaceHolder
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

intencion = [('Vender', 'Vender'), ('Regalar', 'Regalar'),('Intercambiar', 'Intercambiar')]
intencion_list = []

for inten in intencion:
    intencion_list.append(inten)

class AddBookform(forms.ModelForm):
    model = Books

    titulo = forms.CharField(max_length=150, label='',  widget=forms.TextInput(
        attrs={'placeholder': 'Titulo', 'class': 'form-input'}),)

    editorial = forms.CharField(max_length=50, label='',  widget=forms.TextInput(attrs={'placeholder' :'Editorial'}),)

    categoria = forms.ChoiceField(choices=categorias_list, label='', widget=forms.Select(
        attrs={'class': 'form-input'}))
    
    cantidad = forms.IntegerField(label='', widget=forms.NumberInput(attrs={'placeholder' :'Cantidad'}),)

    intencion = forms.ChoiceField(choices=intencion_list, label='', widget=forms.Select(
        attrs={'class': 'form-input',
               }),)

    estado = forms.ChoiceField(choices=estados_list, label='', widget=forms.Select(
        attrs={'class': 'form-input',
               }),)

    precio = forms.IntegerField(label='', widget=forms.NumberInput(attrs={'placeholder' :'Precio'}),)

    autor = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Autor', 'class': 'form-input'}), )

    class Meta:
        model = Books
        fields = ('titulo','editorial' ,'categoria', 'cantidad', 'intencion','estado', 'precio', 'autor', 'reseña', 'libro_img')
