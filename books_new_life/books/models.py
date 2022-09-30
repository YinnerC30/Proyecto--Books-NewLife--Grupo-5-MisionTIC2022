from audioop import reverse
from email.policy import default
import profile
from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import date, datetime
from ckeditor.fields import RichTextField


class Books(models.Model):

    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    titulo = models.CharField(max_length=200)
    categoria = models.CharField(max_length=200)
    estado = models.CharField(max_length=15)
    autor = models.CharField(max_length=200)
    reseña = RichTextField(blank=True, null=True)
    libro_img = models.ImageField(null=True, blank=True, upload_to="images/")
    fecha = models.DateTimeField(auto_now_add=True)
    likes = models.ManyToManyField(User, related_name='book_post')

    def total_likes(self):
        return self.likes.count()

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


class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    descripcion = models.TextField()
    profile_pic = models.ImageField(
        null=True, blank=True, upload_to="images/profile/")
    departamento = models.CharField(max_length=50, default=None)
    poblacion = models.CharField(max_length=50, default=None)

    # informacion de contacto

    telefono = models.CharField(max_length=10, default=None)
    whatsApp = models.CharField(max_length=10, default=None)
    facebook = models.URLField(
        ("Facebook"),
        max_length=700,
        db_index=True,
        unique=True,
        blank=True, default=None
    )

    def __str__(self) -> str:
        return str(self.user)
