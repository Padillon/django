"""comercial URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from django.contrib.auth.views import login
from django.conf.urls import url
from apps.inventario import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('dashboard/', include('apps.inventario.urls', namespace='dashboard')),
    path('comercial/', include('apps.inventario.urls', namespace='comercial')),
    path('productos/', include('apps.inventario.urls', namespace='productos')),
    path('marcas/', include('apps.inventario.urls', namespace='marcas')),
    path('categorias/', include('apps.inventario.urls', namespace='categorias')),
    path('proveedores/', include('apps.inventario.urls', namespace='proveedor')),
    path('clientes/', include('apps.inventario.urls', namespace='cliente')),
    path('vender/', include('apps.inventario.urls', namespace='vender')),
    path('compras/', include('apps.inventario.urls', namespace='compra')),
    url(r'^$', login, {'template_name':'index.html'}, name='login'),
    url(r'^buscar_producto/$',views.buscar_producto),
    url(r'^venta/$',views.venta),
    path('compras/', include('apps.inventario.urls', namespace='inventario_list')),


]
