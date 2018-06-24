from django import forms
from apps.inventario.models import productos,marca,proveedor,categoria
#productos
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
                                             'placeholder':"Nombre de la marca"}),
            'descripcion': forms.TextInput(attrs={'class':'form-control',
                                                  'placeholder':"Descripcion de la marca"}),
        }
