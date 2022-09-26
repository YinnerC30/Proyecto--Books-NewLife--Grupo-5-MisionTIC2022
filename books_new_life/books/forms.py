from django import forms
from .models import Books


class AddBookform(forms.ModelForm):

    class Meta:
        model = Books
        fields = ('usuario',)
