from django.db import models

# Create your models here.
class Comentario(models.Model):
    nombre = models.CharField(max_length=100)
    correo = models.EmailField()
    departamento = models.CharField(max_length=100)
    mensaje = models.TextField()
    fecha = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Nombre: {self.nombre} | Departamento: {self.departamento}"