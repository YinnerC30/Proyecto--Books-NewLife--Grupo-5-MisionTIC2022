from django.shortcuts import render
from django.http import HttpResponse
from .models import DatosUsuarios
from .forms import SignUpForm


def signup(request):
    form = SignUpForm()
    return render(request, 'signup.html', {'form': form})


def test(request):

    print(request.POST.get('nombre', True))
    return render(request, 'prueba.html', {})
