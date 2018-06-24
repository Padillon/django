from django import forms
from apps.inventario.models import productos,marca,proveedor

class productoForm(forms.ModelForm):
    class Meta:
        model = productos
        fields = [
            'codigo',
            'nombre',
            'descripcion',
            'precio',
            'categoria',
            'marca',
            'proveedor',
        ]

        labels = {
            'codigo':'codigo',
            'nombre':'nombre',
            'descripcion':'descripcion',
            'precio':'precio',
            'categoria':'categoria',
            'marca':'marca',
            'proveedor':'proveedor',
        }

        widgets = {
            'codigo': forms.TextInput(attrs={'class':'form-control'}),
            'nombre': forms.TextInput(attrs={'class':'form-control'}),
            'descripcion': forms.TextInput(attrs={'class':'form-control'}),
            'precio': forms.TextInput(attrs={'class':'form-control'}),
            'categoria': forms.Select(attrs={'class':'form-control'}),
            'marca': forms.Select(attrs={'class':'form-control'}),
            'proveedor': forms.Select(attrs={'class':'form-control'}),
        }

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
