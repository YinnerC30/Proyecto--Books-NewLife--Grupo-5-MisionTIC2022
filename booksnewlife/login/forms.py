from cProfile import label
from distutils.command.clean import clean
from logging import PlaceHolder
from django.forms import ModelForm
from django import forms
from . import models


class SignUpForm(ModelForm):

    repetir_contraseña = forms.CharField(widget=forms.PasswordInput(
        attrs={'class': 'signup-input', 'placeholder': "Repita la contraseña", 'required': True}), label='')

    class Meta:
        model = models.DatosUsuarios
        fields = '__all__'
        labels = {
            'usuario': '',
            'nombre': '',
            'apellido': '',
            'correo': '',
            'telefono': '',
            'contraseña': '',
        }

        widgets = {
            'usuario': forms.TextInput(attrs={'placeholder': 'Usuario', 'class': 'signup-input', 'required': True}),
            'nombre': forms.TextInput(attrs={'placeholder': 'Nombre', 'class': 'signup-input', 'required': True}),
            'apellido': forms.TextInput(attrs={'placeholder': 'Apellido', 'class': 'signup-input', 'required': True}),
            'correo': forms.EmailInput(attrs={'placeholder': 'Correo', 'class': 'signup-input', 'required': True}),
            'telefono': forms.NumberInput(attrs={'placeholder': 'Telefono', 'class': 'signup-input', 'required': True}),
            'contraseña': forms.PasswordInput(attrs={'placeholder': 'Contraseña', 'class': 'signup-input', 'required': True}),



        }

        def clean_field(self):
            cleaned_data = super(SignUpForm, self).clean()
            password = cleaned_data['contraseña']
            rpassword = cleaned_data['repetir_contraseña']

            if password != rpassword:
                raise forms.ValidationError('no son iguales')
