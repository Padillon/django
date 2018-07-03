from django.urls import include, path
from apps.inventario.views import *
from django.contrib.auth.decorators import login_required
from django.contrib.auth.views import logout

app_name = 'comercial'

urlpatterns = [
    path('dashboard/',login_required(index.as_view()), name = 'dashboard'),
    #Productos
    path('productos/',login_required(ListadoProductos.as_view()), name = 'productos'),
    path('crear_productos/',login_required(CrearProducto.as_view()), name = 'crear_productos'),
    path('modificar_productos/(?P<pk>.+)/',login_required(ModificarProducto.as_view()), name = 'modificar_productos'),
    path('detalle_producto/(?P<pk>.+)/',login_required(DetalleProductos.as_view()), name = 'detalle_productos'),
    path('eliminar_producto/(?P<pk>.+)/',login_required(EliminarProducto.as_view()), name = 'eliminar_producto'),

    #proveedores
    path('proveedores/',login_required(ListadoProveedor.as_view()), name = 'proveedor'),
    path('crear_proveedor/',login_required(CrearProveedor.as_view()), name = 'crear_proveedores'),
    path('modificar_proveedor/(?P<pk>.+)/',login_required(ModificarProveedor.as_view()), name = 'modificar_proveedor'),
    path('detalle_proveedor/(?P<pk>.+)/',login_required(DetalleProveedor.as_view()), name = 'detalle_proveedor'),
    path('eliminar_proveedor/(?P<pk>.+)/',login_required(EliminarProveedor.as_view()), name = 'eliminar_proveedor'),
    #Marcas
    path('marcas/',login_required(marca_list.as_view()), name = 'marca'),
    path('crear_marca/',login_required(CrearMarca.as_view()), name = 'crear_marcas'),
    path('modificar_marca/(?P<pk>.+)/',login_required(ModificarMarca.as_view()), name = 'modificar_marcas'),
    path('detalle_marca/(?P<pk>).+/',login_required(DetalleMarca.as_view()), name = 'detalle_marcas'),
    path('eliminar_marca/(?P<pk>.+)/',login_required(EliminarMarca.as_view()), name = 'eliminar_marcas'),
    #categoria
    path('categoria/',login_required(categoria_list.as_view()), name = 'categoria'),
    path('crear_categoria/',login_required(CrearCategoria.as_view()), name = 'crear_categoria'),
    path('modificar_categoria/(?P<pk>.+)/',login_required(ModificarCategoria.as_view()), name = 'modificar_categoria'),
    path('detalle_categoria/(?P<pk>).+/',login_required(DetalleCategoria.as_view()), name = 'detalle_categoria'),
    path('eliminar_categoria/(?P<pk>.+)/',login_required(EliminarCategoria.as_view()), name = 'eliminar_categoria'),
    #Clientes
    path('clientes/',login_required( ListadoClientes.as_view()), name="listado_clientes"),
    path('crear_cliente/$',login_required(CrearCliente.as_view()), name="crear_cliente"),
    path('modificar_cliente/(?P<pk>.+)/$',login_required(ModificarCliente.as_view()), name="modificar_cliente"),
    path('detalle_cliente/(?P<pk>.+)/$',login_required(DetalleCliente.as_view()), name="detalle_cliente"),
    path('eliminar_cliente/(?P<pk>.+)/$',login_required(EliminarCliente.as_view()), name="eliminar_cliente"),
    #inventario
    path('inventario/',login_required(ListadoInventario.as_view()), name="inventario_list"),
    path('reporte_de_porductos/',login_required(ReporteProductosPDF.as_view()), name="reporte_productos"),
    path('reporte_de_porductos_bajo/',login_required(ReporteProductosBajosPDF.as_view()), name="reporte_productos_bajos"),

    #usuario
    path('nuevo_usuario/',login_required(nuevo_usuario.as_view()), name="nuevo_usuario"),
    path('salir',logout, name="salir", kwargs={'next_page': '/'}),
    #ventas

    path('vender/',login_required(ventas_list.as_view()), name="venta_list"),
    path('nueva_venta/',login_required(venta), name="crear_venta"),
    path('venta/', venta, name="guardarVenta"),


    #compras
    path('compras/',login_required(ListadoCompra.as_view()), name="listado_compras"),
    path('crear_compra/',login_required(CrearCompra), name="crear_compra"),



]
