from dataclasses import field
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms


class SignUpForm(UserCreationForm):

    username = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Usuario', 'class': 'signup-input'}), )

    email = forms.EmailField(label='', widget=forms.EmailInput(
        attrs={'placeholder': 'Correo', 'class': 'signup-input'}))

    nombre = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre', 'class': 'signup-input'}))

    apellido = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Apellido', 'class': 'signup-input'}))

    password1 = forms.CharField(max_length=100, label='', widget=forms.PasswordInput(
        attrs={'placeholder': 'Contraseña', 'class': 'signup-input'}))

    password2 = forms.CharField(max_length=100, label='', widget=forms.PasswordInput(
        attrs={'placeholder': 'Repetir contraseña', 'class': 'signup-input'}))

    class Meta:
        model = User
        fields = ('username', 'nombre', 'apellido',
                  'email', 'password1', 'password2')
