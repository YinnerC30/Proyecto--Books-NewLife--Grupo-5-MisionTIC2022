from audioop import reverse
from datetime import datetime
from email.policy import default
from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import date, datetime


class Books(models.Model):

    class Estado(models.TextChoices):
        Excelente = ('Excelente', 'Excelente')
        Bueno = ('Bueno', 'Bueno')
        Regular = ('Regular', 'Regular')

    class Categorias(models.TextChoices):

        cientifico = ('Cientifico', 'Cientifico')
        literatura = ('Literatura', 'Literatura')
        biografia = ('Biografia', 'Biografia')
        libro_texto = ('Libro de texto', 'Libro de texto')
        monografia = ('Monografia', 'Monografia')
        poeticos = ('Poeticos', 'Poeticos')
        juveniles = ('Juveniles', 'Juveniles')
        ficcion = ('Ficcion', 'Ficcion')
        comedia = ('Comedia', 'Comedia')
        leyendas = ('Leyenda', 'Leyenda')
        epopeya = ('Epopeya', 'Epopeya')
        fabula = ('Fabula', 'Fabula')

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=200)
    categoria = models.CharField(max_length=200, choices=Categorias.choices)
    estado = models.CharField(max_length=15, choices=Estado.choices)
    autor = models.CharField(max_length=200)
    reseña = models.TextField()
    libro_img = models.ImageField(null=True, blank=True, upload_to="images/")
    fecha = models.DateTimeField(auto_now_add=True)

    def __str__(self) -> str:
        return self.titulo+'|'+str(self.usuario)

    def get_absolute_url(self):
        return reverse('book_details', args=[str(self.pk)])


class Categorias(models.Model):
    categoria = models.CharField(max_length=250)

    def __str__(self) -> str:
        return self.categoria

    def get_absolute_url(self):
        return reverse('index')
