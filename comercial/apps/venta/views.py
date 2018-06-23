from django.shortcuts import render
from django.views.generic import CreateView,UpdateView,ListView,DetailView
from django.urls import reverse_lazy
from django.http import JsonResponse
from django.template.loader import render_to_string
from apps.venta.forms import ClienteForm
from apps.venta.models import Cliente

class ListadoClientes(ListView):
    model = Cliente
    template_name ="cliente/clientes.html"
    context_object_name = 'clientes'

class CrearCliente(CreateView):
    template_name ="cliente/cliente.html"
    form_class = ClienteForm
    success_url = reverse_lazy('comercial:listado_clientes')

class ModificarCliente(UpdateView):
    model = Cliente
    template_name = 'cliente/cliente.html'
    form_class = ClienteForm
    success_url = reverse_lazy('comercial:listado_clientes')

class DetalleCliente(DetailView):
    model = Cliente
    template_name = 'detalle_cliente.html'

# Create your views here.
