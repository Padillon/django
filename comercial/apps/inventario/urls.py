from django.urls import include, path
from apps.inventario.views import index,categoria, \
    marca_list,CrearMarca,ModificarMarca,DetalleMarca,EliminarMarca,proveedor, \
    CrearProveedor,ModificarProveedor,DetalleProveedor, ListadoProveedor,EliminarProveedor, \
    categoria_list, CrearCategoria, ModificarCategoria, DetalleCategoria, EliminarCategoria, \
    ListadoProductos, CrearProducto,ModificarProducto,DetalleProductos,EliminarProducto,ventas_list, \
    CrearVenta

from apps.venta.views import ListadoClientes, CrearCliente, ModificarCliente, DetalleCliente, EliminarCliente

app_name = 'comercial'

urlpatterns = [
    path('dashboard/',index.as_view(), name = 'dashboard'),
    #Productos
    path('productos/',ListadoProductos.as_view(), name = 'productos'),
    path('crear_productos/',CrearProducto.as_view(), name = 'crear_productos'),
    path('modificar_productos/(?P<pk>.+)/',ModificarProducto.as_view(), name = 'modificar_productos'),
    path('detalle_producto/(?P<pk>.+)/',DetalleProductos.as_view(), name = 'detalle_productos'),
    path('eliminar_producto/(?P<pk>.+)/',EliminarProducto.as_view(), name = 'eliminar_producto'),

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
    #categoria
    path('categoria/',categoria_list.as_view(), name = 'categoria'),
    path('crear_categoria/',CrearCategoria.as_view(), name = 'crear_categoria'),
    path('modificar_categoria/(?P<pk>.+)/',ModificarCategoria.as_view(), name = 'modificar_categoria'),
    path('detalle_categoria/(?P<pk>).+/',DetalleCategoria.as_view(), name = 'detalle_categoria'),
    path('eliminar_categoria/(?P<pk>.+)/',EliminarCategoria.as_view(), name = 'eliminar_categoria'),
    #Clientes
    path('clientes/', ListadoClientes.as_view(), name="listado_clientes"),
    path('crear_cliente/$', CrearCliente.as_view(), name="crear_cliente"),
    path('modificar_cliente/(?P<pk>.+)/$',ModificarCliente.as_view(), name="modificar_cliente"),
    path('detalle_cliente/(?P<pk>.+)/$',DetalleCliente.as_view(), name="detalle_cliente"),
    path('eliminar_cliente/(?P<pk>.+)/$',EliminarCliente.as_view(), name="eliminar_cliente"),
    #ventas
    path('vender/',ventas_list.as_view(), name="venta_list"),
    path('nueva_venta/',CrearVenta, name="crear_venta"),

]
