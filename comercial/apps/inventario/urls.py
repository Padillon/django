from django.urls import include, path
from apps.inventario.views import index,productos,categoria,proveedor,marca
app_name = 'comercial'

urlpatterns = [
    path('dashboard/',index, name = 'dashboard'),
    path('productos/',productos, name = 'productos'),
    path('marcas/',marca, name = 'marcas'),
    path('categorias/',categoria, name = 'categorias'),
    path('proveedores/',proveedor, name = 'proveedor'),
]
