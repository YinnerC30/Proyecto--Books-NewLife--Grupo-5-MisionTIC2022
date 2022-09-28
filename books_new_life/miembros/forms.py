
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.contrib.auth.models import User
from django import forms


class SignUpForm(UserCreationForm):

    username = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Usuario', 'class': 'signup-input'}), )

    email = forms.EmailField(label='', widget=forms.EmailInput(
        attrs={'placeholder': 'Correo', 'class': 'signup-input'}))

    first_name = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre', 'class': 'signup-input'}))

    last_name = forms.CharField(max_length=100, label='', widget=forms.TextInput(
        attrs={'placeholder': 'Apellido', 'class': 'signup-input'}))

    password1 = forms.CharField(max_length=100, label='', widget=forms.PasswordInput(
        attrs={'placeholder': 'Contraseña', 'class': 'signup-input'}))

    password2 = forms.CharField(max_length=100, label='', widget=forms.PasswordInput(
        attrs={'placeholder': 'Repetir contraseña', 'class': 'signup-input'}))

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name',
                  'email', 'password1', 'password2')


class UserEditForm(UserChangeForm):
    username = forms.CharField(max_length=100, label='Usuario', widget=forms.TextInput(
        attrs={'placeholder': 'Usuario', 'class': 'signup-input'}), )
    first_name = forms.CharField(max_length=100, label='Nombre', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre', 'class': 'signup-input'}), )
    last_name = forms.CharField(max_length=100, label='Apellidos', widget=forms.TextInput(
        attrs={'placeholder': 'Apellidos', 'class': 'signup-input'}), )
    email = forms.EmailField(label='Email', widget=forms.EmailInput(
        attrs={'placeholder': 'Correo', 'class': 'signup-input'}))

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password')
