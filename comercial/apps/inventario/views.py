from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.views.generic import CreateView,UpdateView,ListView,DetailView,DeleteView
from apps.inventario.forms import marcaForm,proveedorForm,categoriaForm
from apps.inventario.models import marca,proveedor,categoria

# Create your views here.

def index(request):
    return render(request, 'dashboard/dashboard.html')

def productos(request):
    return render(request, 'productos/productos_list.html')

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
