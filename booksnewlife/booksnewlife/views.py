from django.shortcuts import render


def index(request):
    return render(request, 'index.html', {})


def recover(request):
    return render(request, 'recover.html')


def about(request):
    return render(request, "about.html", {})


def login(request):
    return render(request, 'login.html', {})
