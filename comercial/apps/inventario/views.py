from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def index(request):
    return render(request, 'dashboard/dashboard.html')

def productos(request):
    return render(request, 'productos/productos_list.html')

def categoria(request):
    return render(request, 'categoria/categoria_list.html')

def proveedor(request):
    return render(request, 'proveedor/proveedor_list.html')

def marca(request):
    return render(request, 'marca/marca_list.html')
