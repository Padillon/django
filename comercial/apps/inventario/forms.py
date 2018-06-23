from django import forms
from apps.inventario.models import productos,marca

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

        
