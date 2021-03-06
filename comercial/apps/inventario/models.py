from django.db import models

from django.db.models import signals
# Create your models here.

class Cliente(models.Model):
    nombre = models.CharField(max_length = 50)
    apellido = models.CharField(max_length = 70)
    direccion = models.CharField(max_length = 80)
    registro = models.CharField(max_length = 25)
    telefono = models.CharField(max_length = 12)

    def __str__(self):
        return '{}'.format(self.nombre)


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

    def __str__(self):
        return '{}'.format(self.nombre)

class Venta(models.Model):
    fecha = models.CharField(max_length=100)
    cliente = models.ForeignKey(Cliente, null=True, blank=True, on_delete=models.CASCADE)
    total = models.DecimalField(max_digits=5,decimal_places=2, null=True)

class detalle_venta(models.Model):
    venta = models.ForeignKey(Venta, null=True, on_delete=models.SET_NULL)
    producto = models.ForeignKey(productos, null=True, on_delete=models.SET_NULL)
    cantidad = models.IntegerField(max_length=10000)
    subtotal = models.DecimalField(max_digits=5,decimal_places=2, null=True)

class Compra(models.Model):
    proveedor = models.ForeignKey(proveedor, null=True, on_delete=models.SET_NULL)
    fecha = models.DateField(auto_now_add=True)
    total = models.FloatField(max_length=100)

class DetalleCompra(models.Model):
    proveedor = models.ForeignKey(proveedor, null=True, on_delete=models.SET_NULL)
    producto = models.ForeignKey(productos, null=True, on_delete=models.SET_NULL)
    cantidad = models.IntegerField(max_length=10000)
    precio_compra = models.DecimalField(max_digits=5,decimal_places=2)
    total = models.FloatField(max_length=100,default=0.0)
    fecha = models.DateField(auto_now_add=True)
