from django.shortcuts import render
from django.http import HttpResponse
from .models import DatosUsuarios

def test(request):
    #usuario=DatosUsuarios(usuario='osman1',nombre='osman',apellido='barros',correo='osman@django.com',telefono=30152810,contraseña='123')
    #usuario.save()
    
    borrar=DatosUsuarios.objects.filter(nombre='osman')
    borrar.delete()
    
    return HttpResponse("sirveeeeee")