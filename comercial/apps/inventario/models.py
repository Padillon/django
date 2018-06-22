from django.db import models

# Create your models here.
class categoria(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)

class marca(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)

class proveedor(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    telefono = models.CharField(max_length=100)

class productos(models.Model):
    id = models.AutoField(primary_key=True)
    codigo = models.IntegerField(max_length=100)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    precio = models.FloatField(max_length=100)
    categoria = models.ForeignKey(categoria, null=True, blank=True, on_delete=models.CASCADE)
    marca = models.ForeignKey(marca, null=True, blank=True, on_delete=models.CASCADE)
    proveedor = models.ForeignKey(proveedor, null=True, blank=True, on_delete=models.CASCADE)
