from audioop import reverse
from datetime import datetime
from email.policy import default
from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import date, datetime


class Books(models.Model):

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=200)
    categoria = models.CharField(max_length=200)
    estado = models.CharField(max_length=15)
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
