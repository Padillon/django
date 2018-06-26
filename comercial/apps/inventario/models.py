from django.db import models
from apps.venta.models import Cliente
# Create your models here.
class estado(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.nombre)
        


class categoria(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.nombre)


class marca(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.nombre)

class proveedor(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    telefono = models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.nombre)

class productos(models.Model):
    id = models.AutoField(primary_key=True)
    codigo = models.IntegerField(max_length=100)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    precio = models.FloatField(max_length=100)
    stock = models.IntegerField(max_length=10000)
    stock_min = models.IntegerField(max_length=10000)
    estado = models.ForeignKey(estado, null=True, blank=True, on_delete=models.CASCADE)
    categoria = models.ForeignKey(categoria, null=True, blank=True, on_delete=models.CASCADE)
    marca = models.ForeignKey(marca, null=True, blank=True, on_delete=models.CASCADE)
    proveedor = models.ForeignKey(proveedor, null=True, blank=True, on_delete=models.CASCADE)

class detalle_venta(models.Model):
    id = models.AutoField(primary_key=True)
    cantidad = models.IntegerField(max_length=10000)
    productos = models.ManyToManyField(productos)
    subtotal = models.FloatField(max_length=100)

    
class venta(models.Model):
    id = models.AutoField(primary_key=True)
    fecha = models.DateField()
    cliente = models.ForeignKey(Cliente, null=True, blank=True, on_delete=models.CASCADE)
    total = models.IntegerField(max_length=100)
    detalle = models.ForeignKey(detalle_venta, null=True, blank=True, on_delete=models.CASCADE)

