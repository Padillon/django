from django.urls import include, path
from apps.inventario.views import index,productos,categoria, \
<<<<<<< Updated upstream
    marca_list,CrearMarca,ModificarMarca,DetalleMarca,EliminarMarca,proveedor,CrearProveedor,ModificarProveedor,DetalleProveedor, ListadoProveedor
=======
    marca_list,CrearMarca,ModificarMarca,DetalleMarca,EliminarMarca,proveedor,CrearProveedor,ModificarProveedor,\
    DetalleProveedor
>>>>>>> Stashed changes
from apps.venta.views import ListadoClientes, CrearCliente, ModificarCliente, DetalleCliente

app_name = 'comercial'

urlpatterns = [
    path('dashboard/',index, name = 'dashboard'),
    path('productos/',productos, name = 'productos'),
    path('categorias/',categoria, name = 'categorias'),
    #proveedores
<<<<<<< Updated upstream
    path('proveedores/',ListadoProveedor.as_view(), name = 'proveedor'),
    path('crear_proveedor/',CrearProveedor.as_view(), name = 'crear_proveedor'),
    path('modificar_proveedor/(?P<pk>.+)/',ModificarProveedor.as_view(), name = 'modificar_proveedor'),
    path('detalle_proveedor/(?P<pk>.+)/',DetalleProveedor.as_view(), name = 'detalle_proveedor'),
    path('eliminar_proveedor/(?P<pk>.+)/',EliminarMarca.as_view(), name = 'eliminar_proveedor'),
=======
    path('proveedores/',proveedor.as_view(), name = 'proveedor'),
    path('crear_proveedor/',CrearProveedor.as_view(), name = 'crear_proveedores'),
    path('modificar_provedor/(?P<pk>.+)/',ModificarProveedor.as_view(), name = 'modificar_proveedor'),
    path('detalle_marca/(?P<pk>.+)/',DetalleProveedor.as_view(), name = 'detalle_proveedor'),
    path('eliminar_marca/(?P<pk>.+)/',EliminarMarca.as_view(), name = 'eliminar_proveedor'),
>>>>>>> Stashed changes
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

]
