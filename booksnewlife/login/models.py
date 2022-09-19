from django.db import models


class DatosUsuarios(models.Model):

    usuario = models.CharField(max_length=30, null=False, )
    nombre = models.CharField(max_length=30, null=False)
    apellido = models.CharField(max_length=30, null=False)
    correo = models.EmailField(max_length=100, null=False)
    telefono = models.IntegerField(null=False)
    contraseña = models.CharField(max_length=50, null=False)

    def __str__(self):
        return self.usuario


class DatosLibros(models.Model):

    usuario = models.ForeignKey(DatosUsuarios, on_delete=models.CASCADE)

    titulo = models.TextField(max_length=60, null=False)
    autor = models.CharField(max_length=60, null=False)
    editorial = models.CharField(max_length=60, null=False)
    categoria = models.CharField(max_length=60, null=False)
    estado = models.CharField(max_length=60, null=False)
    intencion = models.CharField(max_length=60, null=False)
    precio = models.IntegerField(default=0)

    def __str__(self):
        return self.titulo
