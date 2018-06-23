from django.db import models

# Create your models here.
class Cliente(models.Model):
    nombre = models.CharField(max_length = 50)
    apellido = models.CharField(max_length = 70)
    direccion = models.CharField(max_length = 80)    
    registro = models.CharField(max_length = 25)
    telefono = models.CharField(max_length = 12)
