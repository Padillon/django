from django.urls import include, path
from apps.inventario.views import index,productos,categoria, \
    marca_list,CrearMarca,ModificarMarca,DetalleMarca,EliminarMarca,proveedor, \
    CrearProveedor,ModificarProveedor,DetalleProveedor, ListadoProveedor,EliminarProveedor

from apps.venta.views import ListadoClientes, CrearCliente, ModificarCliente, DetalleCliente, EliminarCliente

app_name = 'comercial'

urlpatterns = [
    path('dashboard/',index, name = 'dashboard'),
    path('productos/',productos, name = 'productos'),
    path('categorias/',categoria, name = 'categorias'),
    #proveedores
    path('proveedores/',ListadoProveedor.as_view(), name = 'proveedor'),
    path('crear_proveedor/',CrearProveedor.as_view(), name = 'crear_proveedores'),
    path('modificar_proveedor/(?P<pk>.+)/',ModificarProveedor.as_view(), name = 'modificar_proveedor'),
    path('detalle_proveedor/(?P<pk>.+)/',DetalleProveedor.as_view(), name = 'detalle_proveedor'),
    path('eliminar_proveedor/(?P<pk>.+)/',EliminarProveedor.as_view(), name = 'eliminar_proveedor'),
    #Marcas
    path('marcas/',marca_list.as_view(), name = 'marca'),
    path('crear_marca/',CrearMarca.as_view(), name = 'crear_marcas'),
    path('modificar_marca/(?P<pk>.+)/',ModificarMarca.as_view(), name = 'modificar_marcas'),
    path('detalle_marca/(?P<pk>).+/',DetalleMarca.as_view(), name = 'detalle_marcas'),
    path('eliminar_marca/(?P<pk>.+)/',EliminarMarca.as_view(), name = 'eliminar_marcas'),
    #Clientes
    path('clientes/', ListadoClientes.as_view(), name="listado_clientes"),
    path('crear_cliente/$', CrearCliente.as_view(), name="crear_cliente"),
    path('modificar_cliente/(?P<pk>.+)/$',ModificarCliente.as_view(), name="modificar_cliente"),
    path('detalle_cliente/(?P<pk>.+)/$',DetalleCliente.as_view(), name="detalle_cliente"),
    path('eliminar_cliente/(?P<pk>.+)/$',EliminarCliente.as_view(), name="eliminar_cliente"),
]
