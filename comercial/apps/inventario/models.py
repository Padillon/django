from django.db import models
from apps.venta.models import Cliente
from django.db.models import signals
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
    precio_compra =models.FloatField(max_length=100);
    stock = models.IntegerField(max_length=10000)
    stock_min = models.IntegerField(max_length=10000)
    estado = models.ForeignKey(estado, null=True, blank=True, on_delete=models.CASCADE)
    categoria = models.ForeignKey(categoria, null=True, blank=True, on_delete=models.CASCADE)
    marca = models.ForeignKey(marca, null=True, blank=True, on_delete=models.CASCADE)
    proveedor = models.ForeignKey(proveedor, null=True, blank=True, on_delete=models.CASCADE)

class venta(models.Model):
    codigo = models.CharField(max_length=10, unique=True)
    fecha = models.DateField()
    cliente = models.ForeignKey(Cliente, null=True, blank=True, on_delete=models.CASCADE)
    productos = models.ManyToManyField(productos, through='detalle_venta')
    total = models.IntegerField(max_length=100)


class detalle_venta(models.Model):
    id = models.AutoField(primary_key=True)
    venta = models.ForeignKey(venta, null=True, on_delete=models.SET_NULL)
    productos = models.ForeignKey(productos, null=True, on_delete=models.SET_NULL)
    cantidad = models.IntegerField(max_length=10000)

    def precioventa(self):
        return (self.productos.precio)

    def total_venta(self):
        total=(self.productos.precio*self.cantidad)
        return total

    def totalf(self):
        detalles = detalle_venta.objects.filter(productos=self.pk)
        total = 1
        for detalle in detalles:
            suma = self.productos.precio*self.cantidad
            total = total +suma
            return total

    def __str__(self):
        return self.productos.nombre

def update_stock(sender, instace, **kwargs):
    instance.productos.stock -= instance.cantidad
    instance.productos.save()

signals.post_save.connect(update_stock, sender=detalle_venta, dispatch_uid="update_stock_count")
