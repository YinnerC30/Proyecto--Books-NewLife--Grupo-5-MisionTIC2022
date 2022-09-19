from cProfile import label
from logging import PlaceHolder
from django.forms import ModelForm
from django import forms
from . import models


class SignUpForm(ModelForm):
    class Meta:
        model = models.DatosUsuarios
        fields = '__all__'
        labels = {
            'usuario': '',
            'nombre': '',
            'apellido': '',
            'correo': '',
            'telefono': '',
            'contraseña': ''
        }

        widgets = {
            'usuario': forms.TextInput(attrs={'placeholder': 'usuario', 'class': 'signup-input', 'required': True}),
            'nombre': forms.TextInput(attrs={'placeholder': 'nombre', 'class': 'signup-input', 'required': True}),
            'apellido': forms.TextInput(attrs={'placeholder': 'apellido', 'class': 'signup-input', 'required': True}),
            'correo': forms.TextInput(attrs={'placeholder': 'correo', 'class': 'signup-input', 'required': True}),
            'telefono': forms.TextInput(attrs={'placeholder': 'telefono', 'class': 'signup-input', 'required': True}),
            'contraseña': forms.PasswordInput(attrs={'placeholder': 'contraseña', 'class': 'signup-input', 'required': True}),
        }
