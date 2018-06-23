from django.urls import include, path
from apps.inventario.views import index,productos,categoria,proveedor, \
    marca_list,CrearMarca,ModificarMarca,DetalleMarca
app_name = 'comercial'

urlpatterns = [
    path('dashboard/',index, name = 'dashboard'),
    path('productos/',productos, name = 'productos'),
    path('marcas/',marca_list.as_view(), name = 'marca'),
    path('crear_marca/',CrearMarca.as_view(), name = 'crear_marcas'),
    path('modificar_marca/(?P<pk>.+)/',ModificarMarca.as_view(), name = 'modificar_marcas'),
    path('detalle_marca/(?P<pk>.+)/',DetalleMarca.as_view(), name = 'detalle_marcas'),
    path('categorias/',categoria, name = 'categorias'),
    path('proveedores/',proveedor, name = 'proveedor'),
]
