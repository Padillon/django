from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.views.generic import CreateView,UpdateView,ListView,DetailView,DeleteView
from apps.inventario.forms import *
from apps.inventario.models import *
from django.template import RequestContext
from django.shortcuts import render_to_response
from django.contrib.auth import authenticate, login
import json

class ListadoClientes(ListView):
    model = Cliente
    template_name ="cliente/clientes.html"
    context_object_name = 'clientes'

class CrearCliente(CreateView):
    template_name = 'cliente/cliente.html'
    form_class = ClienteForm
    success_url = reverse_lazy('comercial:listado_clientes')

class ModificarCliente(UpdateView):
    model = Cliente
    template_name = 'cliente/cliente.html'
    form_class = ClienteForm
    success_url = reverse_lazy('comercial:listado_clientes')

class DetalleCliente(DetailView):
    model = Cliente
    template_name = 'cliente/detalle_cliente.html'

class EliminarCliente(DeleteView):
    model = Cliente
    template_name = 'cliente/Eliminar_cliente.html'
    success_url = reverse_lazy('comercial:listado_clientes')
# Create your views here.
class index(ListView):
    model = productos
    template_name = 'dashboard/dashboard.html'
#Productos
class ListadoProductos(ListView):
    model = productos
    template_name = 'productos/productos_list.html'

class CrearProducto(CreateView):
    template_name = 'productos/productos.html'
    form_class = productoForm
    success_url = reverse_lazy('comercial:productos')

class ModificarProducto(UpdateView):
    model = productos
    template_name = 'productos/productos.html'
    form_class = productoForm
    success_url = reverse_lazy('comercial:productos')

class DetalleProductos(DetailView):
    model = productos
    template_name = 'productos/detalle_productos.html'

class EliminarProducto(DeleteView):
    model = productos
    template_name = 'productos/eliminar_productos.html'
    success_url = reverse_lazy('comercial:productos')

#Proveedor
class ListadoProveedor(ListView):
    model = proveedor
    template_name = 'proveedor/proveedor_list.html'

class CrearProveedor(CreateView):
    template_name = 'proveedor/proveedores.html'
    form_class = proveedorForm
    success_url = reverse_lazy('comercial:proveedor')

class ModificarProveedor(UpdateView):
    model = proveedor
    template_name = 'proveedor/proveedores.html'
    form_class = proveedorForm
    success_url = reverse_lazy('comercial:proveedor')

class DetalleProveedor(DetailView):
    model = proveedor
    template_name = 'proveedor/detalle_proveedor.html'

class EliminarProveedor(DeleteView):
    model = proveedor
    template_name = 'proveedor/eliminar_proveedor.html'
    success_url = reverse_lazy('comercial:proveedor')

#Marca
class marca_list(ListView):
    model = marca
    template_name = 'marca/marca_list.html'

class CrearMarca(CreateView):
    template_name = 'marca/marcas.html'
    form_class = marcaForm
    success_url = reverse_lazy('comercial:marca')

class ModificarMarca(UpdateView):
    model = marca
    template_name = 'marca/marcas.html'
    form_class = marcaForm
    success_url = reverse_lazy('comercial:marca')

class DetalleMarca(DetailView):
    model = marca
    template_name = 'marca/detalle_marca.html'

class EliminarMarca(DeleteView):
    model = marca
    template_name = 'marca/eliminar_marca.html'
    success_url = reverse_lazy('comercial:marca')

#Categoria
class categoria_list(ListView):
    model = categoria
    template_name = 'categoria/categoria_list.html'

class CrearCategoria(CreateView):
    template_name = 'categoria/categorias.html'
    form_class = categoriaForm
    success_url = reverse_lazy('comercial:categoria')

class ModificarCategoria(UpdateView):
    model = categoria
    template_name = 'categoria/categorias.html'
    form_class = marcaForm
    success_url = reverse_lazy('comercial:categoria')

class DetalleCategoria(DetailView):
    model = categoria
    template_name = 'categoria/detalle_categoria.html'

class EliminarCategoria(DeleteView):
    model = categoria
    template_name = 'categoria/eliminar_categoria.html'
    success_url = reverse_lazy('comercial:categoria')

#ventas
class ventas_list(ListView):
    model = venta
    template_name = 'venta/venta_list.html'

def CrearVenta(request):
    ventas = venta.objects.all()
    d_ventas = detalle_venta.objects.all()
    Clientes = Cliente.objects.all()

    return render(
        request,
        'venta/crearVenta.html',
        context={'venta':ventas,'d_venta':d_ventas,'client':Clientes},
        )

def buscar_producto(request):
    if request.is_ajax:
        search=request.GET.get('start','')

        productosInfo=productos.objects.filter(nombre__icontains=search)

        data_json=json.dumps(productosInfo)
        print(productosInfo)
    else:
        data_json='fail'
    mimetype="application/json"
    return HttpResponse(data_json,mimetype)


def venta(request):
    if request.method == "POST":
        form = VentaForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect("comercial:venta_list")
    else:
        form = VentaForm()
    return render(request, 'venta/crearVenta.html',{'form':form})

#compra
class ListadoCompra(ListView):
    model = Compra
    template_name = 'compra/compras.html'
    #context_object_name = 'compras'


def CrearCompra(request):
    if request.method == "POST":
        form = DetalleCompraForm(request.POST)

        if form.is_valid():
            #guardamos el registro
            obj=form.save()
            #actualizamos el total
            precio_compra = float(request.POST['precio_compra'])
            stock_mas = float (request.POST['cantidad'])
            comp = DetalleCompra.objects.get(pk=obj.id)
            total_compra = precio_compra * stock_mas
            comp.total = total_compra
            comp.save()
            #actualizamos el stock
            stock_mas = int(stock_mas)
            prod = productos.objects.get(pk=request.POST['producto'])
            s = int(prod.stock)
            total = s+stock_mas
            prod.stock = total
            prod.save()
            #creamos el registro de compra
            compra = Compra()
            compra.proveedor = obj.proveedor
            compra.total = total_compra
            compra.save()    
        return redirect("comercial:listado_compras")
    else:
        form = DetalleCompraForm()
    return render(request, 'compra/compra.html',{'form':form})

def login_page(request):
    message = None
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    message ="Bienvenido ingeniero"
                else:
                    message = "Tu usuario esta inactivo"
            else:
                message = "Nel prro no estas registrado"
    else:
        form = LoginForm()
    return render_to_response('index.htm',{'message':message,'form':form,'user':username},
                            context_instance=RequestContext(request))
