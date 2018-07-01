from django import forms
from apps.inventario.models import *
from django.contrib.admin.widgets import AdminDateWidget
from django.forms.fields import DateField
from django.forms.models import inlineformset_factory
#productos
class ClienteForm(forms.ModelForm):

    class Meta:
        model = Cliente
        fields = ['nombre', 'apellido', 'direccion', 'registro','telefono']

    def __init__(self, *args, **kwargs):
        super(ClienteForm, self).__init__(*args, **kwargs)
        for field in iter(self.fields):
            if field != 'estado':
                self.fields[field].widget.attrs.update({
                    'class': 'form-control'
                })

class productoForm(forms.ModelForm):
    class Meta:
        model = productos
        fields = [
            'codigo',
            'nombre',
            'descripcion',
            'precio',
            'stock',
            'stock_min',
            'estado',
            'categoria',
            'marca',
            'proveedor',
        ]

        labels = {
            'codigo':'codigo',
            'nombre':'nombre',
            'descripcion':'descripcion',
            'precio':'precio',
            'stock':'Estock',
            'stock_min':'Estock Minimo',
            'Estado':'Estado',
            'categoria':'categoria',
            'marca':'marca',
            'proveedor':'proveedor',
        }

        widgets = {
            'codigo': forms.TextInput(attrs={'class':'form-control'}),
            'nombre': forms.TextInput(attrs={'class':'form-control'}),
            'descripcion': forms.TextInput(attrs={'class':'form-control'}),
            'precio': forms.TextInput(attrs={'class':'form-control'}),
            'stock': forms.TextInput(attrs={'class':'form-control'}),
            'stock_min': forms.TextInput(attrs={'class':'form-control'}),
            'estado':  forms.Select(attrs={'class':'form-control'}),
            'categoria': forms.Select(attrs={'class':'form-control'}),
            'marca': forms.Select(attrs={'class':'form-control'}),
            'proveedor': forms.Select(attrs={'class':'form-control'}),
        }
#Marca
class marcaForm(forms.ModelForm):
    class Meta:
        model = marca
        fields = [
            'nombre',
            'descripcion',
        ]

        labels = {
            'nombre':'Nombre',
            'descripcion':'Descripcion',

        }

        widgets = {
            'nombre': forms.TextInput(attrs={'class':'form-control',
                                             'placeholder':"Nombre de la marca"}),
            'descripcion': forms.TextInput(attrs={'class':'form-control',
                                                  'placeholder':"Descripcion de la marca"}),
        }
#Proveedor
class proveedorForm(forms.ModelForm):
    class Meta:
        model = proveedor
        fields = [
            'nombre',
            'descripcion',
            'telefono'
        ]

        labels = {
            'nombre':'Nombre',
            'descripcion':'Descripcion',
            'telefono':'Telefono',

        }

        widgets = {
            'nombre': forms.TextInput(attrs={'class':'form-control',
                                             'placeholder':"Nombre del proveedor"}),
            'descripcion': forms.TextInput(attrs={'class':'form-control',
                                                  'placeholder':"Descripcion del proveedor"}),
            'telefono': forms.TextInput(attrs={'class':'form-control',
                                                'placeholder':"telefono de contacto"}),
        }

#categoria
class categoriaForm(forms.ModelForm):
    class Meta:
        model = categoria
        fields = [
            'nombre',
            'descripcion',
        ]

        labels = {
            'nombre':'Nombre',
            'descripcion':'Descripcion',

        }

        widgets = {
            'nombre': forms.TextInput(attrs={'class':'form-control',
                                             'placeholder':"Nombre de la categoria"}),
            'descripcion': forms.TextInput(attrs={'class':'form-control',
                                                  'placeholder':"Descripcion de la categoria"}),
        }

#venta
class VentaForm(forms.ModelForm):
    class Meta:
        model = venta
        fields = [
            'id',
            'fecha',
            'cliente',
            'total'
        ]

        labels = {
            'id':'Factura #',
            'fecha':'Fecha',
            'cliente':'Cliente',
            'total':'Total'
        }

        widgets = {
            'id': forms.TextInput(attrs={'class':'form-control', 'readonly':'readonly'}),
            'fecha': forms.TextInput(attrs={'class':'form-control', 'placeholder':"fecha", 'type':"date"}),
            'cliente': forms.Select(attrs={'class':'form-control', 'placeholder':"cliente"}),
            'total': forms.TextInput(attrs={'class':'form-control', 'readonly':'readonly', 'placeholder':"total"})
        }


class CompraForm(forms.ModelForm):

    class Meta:
        model = Compra
        fields = ['proveedor']

    def __init__(self, *args, **kwargs):
        super(CompraForm, self).__init__(*args, **kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class': 'form-control'
            })


class DetalleCompraForm(forms.ModelForm):

    class Meta:
        model = DetalleCompra
        fields = [
            'proveedor',
            'producto',
            'cantidad',
            'precio_compra',
        ]

        labels = {
            'proveedor':'Proveedor',
            'producto':'Producto',
            'cantidad':'Cantidad',
            'precio_compra':'Precio',
        }

        widgets = {
            'proveedor': forms.Select(attrs={'class':'form-control',
                                             'placeholder':"producto"}),
            'producto': forms.Select(attrs={'class':'form-control',
                                             'placeholder':"producto"}),
            'cantidad': forms.TextInput(attrs={'class':'form-control',
                                             'placeholder':"cantidad"}),
            'precio_compra': forms.TextInput(attrs={'class':'form-control',
                                             'placeholder':"cantidad"}),
        }

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput())
