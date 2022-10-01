
from django.contrib.auth.forms import UserCreationForm, UserChangeForm, AuthenticationForm
from django.contrib.auth.models import User
from django import forms
from .models import Profile


class SignUpForm(UserCreationForm):

    username = forms.CharField(max_length=100, label='Nombre de usuario:', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre de usuario', 'class': 'input-control'}), )

    email = forms.EmailField(label='Correo electronico:', widget=forms.EmailInput(
        attrs={'placeholder': 'Correo electronico', 'class': 'input-control'}))

    first_name = forms.CharField(max_length=100, label='Nombre:', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre', 'class': 'input-control'}))

    last_name = forms.CharField(max_length=100, label='Apellido:', widget=forms.TextInput(
        attrs={'placeholder': 'Apellido', 'class': 'input-control'}))

    password1 = forms.CharField(max_length=100, label='Contraseña:', widget=forms.PasswordInput(
        attrs={'placeholder': 'Contraseña', 'class': 'input-control'}))

    password2 = forms.CharField(max_length=100, label='Repetir contraseña:', widget=forms.PasswordInput(
        attrs={'placeholder': 'Repetir contraseña', 'class': 'input-control'}))

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name',
                  'email', 'password1', 'password2')


class UserEditForm(UserChangeForm):
    username = forms.CharField(max_length=100, label='Usuario', widget=forms.TextInput(
        attrs={'placeholder': 'Usuario', 'class': 'box', 'readonly': True}), )
    first_name = forms.CharField(max_length=100, label='Nombre', widget=forms.TextInput(
        attrs={'placeholder': 'Nombre', 'class': 'box'}), )
    last_name = forms.CharField(max_length=100, label='Apellidos', widget=forms.TextInput(
        attrs={'placeholder': 'Apellidos', 'class': 'box'}), )
    email = forms.EmailField(label='Email', widget=forms.EmailInput(
        attrs={'placeholder': 'Correo', 'class': 'box'}))

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password')

# class LoginForm(AuthenticationForm):
#     username = forms.CharField(max_length=100, label='Usuario', widget=forms.TextInput(attrs={'placeholder': 'Usuario', 'class': 'box'}), )
#     password = forms.CharField(max_length=100, label='Contraseña', widget=forms.PasswordInput(
#         attrs={'placeholder': 'Contraseña', 'class': 'box'}), )

#     class Meta:
#         model = User
#         fields = ('username', 'password')


class ProfileForm(forms.ModelForm):
    descripcion = forms.CharField(
        max_length=100, label='Descripcion', widget=forms.Textarea())
    profile_pic = forms.ImageField(
        label='Foto de perfil', widget=forms.FileInput())
    departamento = forms.CharField(
        max_length=100, label='Departamento', widget=forms.TextInput())
    poblacion = forms.CharField(
        max_length=100, label='Poblacion', widget=forms.TextInput())
    telefono = forms.CharField(
        max_length=100, label='Telefono', widget=forms.TextInput())
    whatsApp = forms.CharField(
        max_length=100, label='WhatsApp', widget=forms.TextInput())
    facebook = forms.CharField(
        max_length=100, label='Facebook', widget=forms.TextInput())

    class Meta:
        model = Profile
        fields = '__all__'
        # widgets = {
        #     'bio': forms.Textarea(attrs={'class': 'form-control'}),
        # }
