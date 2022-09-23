from dataclasses import field
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms


class SignUpForm(UserCreationForm):

    email = forms.EmailField(label='correo', widget=forms.EmailInput(
        attrs={'placeholder': 'correo'}))
    nombre = forms.CharField(max_length=100, label='Nombre', widget=forms.EmailInput(
        attrs={'placeholder': 'Nombre'}))
    apellido = forms.CharField(max_length=100)

    class Meta:
        model = User
        fields = ('username', 'nombre', 'apellido',
                  'email', 'password1', 'password2')
        help_texts = {
            'username': None,
            'nombre': None,
            'apellido': None,
            'email': None,

        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['password1'].help_text = None
        self.fields['password2'].help_text = None
