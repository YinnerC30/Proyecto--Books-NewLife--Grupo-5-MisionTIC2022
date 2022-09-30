from django.shortcuts import render, redirect
from .forms import SignUpForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.forms import authenticate


def signup(request):
    form = SignUpForm()
    return render(request, 'signup.html', {'form': form})


def test(request):
    form = SignUpForm(request.POST)

    if (form.is_valid()):
        form.save()
        return render(request, 'prueba.html', {})
    else:
        return redirect('signup')


def login(request):
    return render(request, 'login.html')
