from django.db import models
from django.contrib.auth.models import User


class Book(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=250)
    autor = models.CharField(max_length=100)
    reseña = models.CharField(max_length=500)

    def __str__(self) -> str:
        return self.titulo+'|'+self.usuario
