from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.views.generic import CreateView,UpdateView,ListView,DetailView,DeleteView
from apps.inventario.forms import marcaForm
from apps.inventario.models import marca

# Create your views here.

def index(request):
    return render(request, 'dashboard/dashboard.html')

def productos(request):
    return render(request, 'productos/productos_list.html')

def categoria(request):
    return render(request, 'categoria/categoria_list.html')

def proveedor(request):
    return render(request, 'proveedor/proveedor_list.html')

def cliente(request):
    return render(request, 'cliente/cliente.html')


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
