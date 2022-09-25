from audioop import reverse
from email.policy import default
from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse


class Books(models.Model):

    class Estado(models.TextChoices):
        Excelente = ('Excelente', 'Excelente')
        Bueno = ('Bueno', 'Bueno')
        Regular = ('Regular', 'Regular')

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=200)
    categoria = models.CharField(max_length=200, default='')
    estado = models.CharField(max_length=15, choices=Estado.choices)
    autor = models.CharField(max_length=200)
    reseña = models.TextField()
    libro_img = models.ImageField(null=True, blank=True, upload_to="images/")

    def __str__(self) -> str:
        return self.titulo+'|'+str(self.usuario)

    def get_absolute_url(self):
        return reverse('book_details', args=[str(self.pk)])
