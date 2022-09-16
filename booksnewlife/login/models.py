from xml.parsers.expat import model
from django.db import models

class DatosUsuarios(models.Model):
    
    nombre=models.CharField(max_length=30,null=False)
    apellido=models.CharField(max_length=30,null=False)
    correo=models.CharField(max_length=50,null=False)
    contraseña=models.CharField(max_length=50,null=False)
    def __str__(self):
        return self.name
    

