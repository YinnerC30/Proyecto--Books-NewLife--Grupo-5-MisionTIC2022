from django.db import models
from django.contrib.auth.models import User


class Books(models.Model):

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=200)
    autor = models.CharField(max_length=200)
    reseña = models.TextField()
    libro_img = models.ImageField(null=True, blank=True, upload_to="images/")

    def __str__(self) -> str:
        return self.titulo+'|'+str(self.usuario)
