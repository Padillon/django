from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.views.generic import CreateView,UpdateView,ListView,DetailView,DeleteView,View
from apps.inventario.forms import *
from apps.inventario.models import *
from django.template import RequestContext
from django.shortcuts import render_to_response
from django.contrib.auth import authenticate, login, logout
import json
from django.conf import settings
from io import BytesIO
#from .models import venta

import datetime

#alv veamos si no la riego
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.core import serializers



import reportlab
from reportlab.pdfgen import canvas
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle
from reportlab.lib.units import cm
from reportlab.lib import colors
from reportlab.lib.pagesizes import landscape, letter
#nuevo usuario
class nuevo_usuario(CreateView):
    models = User
    template_name = "usuario/registro.html"
    form_class = userForm
    success_url = reverse_lazy('comercial:usuario')

class ListadoUsuario(ListView):
    model = User
    template_name ="usuario/usuario.html"


#inventario
class ListadoInventario(ListView):
    model = productos
    template_name ="inventario/inventario_list.html"

#clientes
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
    model = Venta
    template_name = 'venta/venta_list.html'



def buscar_producto(request):
    if request.is_ajax:
        search=request.GET.get('start','')
        productosInfo=productos.objects.filter(nombre__icontains=search)

        results=[]
        for producto in productosInfo:
            data={}
            data['id'] = producto.id
            data['codigo']= producto.codigo
            data['precio']=producto.precio
            data['label']=producto.nombre
            data['value']=producto.nombre
            data['stock']=producto.stock

            results.append(data)

        data_json=json.dumps(results)

    else:
        data_json='fail'
    mimetype="application/json"
    return HttpResponse(data_json,mimetype)

def buscar_cliente(request):
    if request.is_ajax:
        search=request.GET.get('start','')
        clienteInfo=Cliente.objects.filter(nombre__icontains=search)

        results=[]
        for cliente in clienteInfo:
            data={}
            data['id'] = cliente.id
            data['label']= cliente.nombre
            results.append(data)

        data_json=json.dumps(results)
        print(results)

    else:
        data_json='fail'
    mimetype="application/json"
    return HttpResponse(data_json,mimetype)


def venta(request):
    #form = VentaForm()
    red = 0
    if request.is_ajax:
        datos=request.GET.get('start', None)
        info = request.GET.get('info', None)
        if (datos != None):

            detalle = []
            detProd = []
            infoSplit = []
            diccionario= dict()
            infoVenta = dict()

            infoSplit = info.split("*")
            s = int(len(infoSplit))
            for i in range(s):
                infoVenta[i] = infoSplit[i]

            sdate = str(infoVenta.get(0))
            comp = Cliente.objects.get(nombre=infoVenta.get(1))
            cliente = int(comp.id)
            total = float(infoVenta.get(2))
            print(sdate, cliente, total)

            insertVenta = Venta(fecha=sdate, cliente_id=cliente, total=total)
            insertVenta.save()
            latestID = Venta.objects.latest('id')
            print(latestID)

            detalle = datos.split("|")
            n = int(len(detalle))
            for i in range(n):
                detProd = detalle[i].split(',')

                for k in range(int(len(detProd))):
                    diccionario[k] = detProd[k]

                idProd = diccionario.get(0)
                if idProd != '':
                    precioProd= float(diccionario.get(1))
                    cantidad = int(diccionario.get(2))
                    subtotal = float(diccionario.get(3))
                    stock = int(diccionario.get(4))
                    insertDetalle = detalle_venta(venta= latestID, producto_id=idProd, cantidad=cantidad, subtotal=subtotal)
                    insertDetalle.save()

                    stProd = productos.objects.get(pk=idProd)
                    pro = int(stProd.stock)-cantidad
                    stProd.stock=pro
                    stProd.save()


            red = 1
        else:
            print("error")
            #form = VentaForm()
    if red == 0:
        return render(request, 'venta/crearVenta.html')
    else:
        return render(request, 'venta/venta_list.html')

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
            compra.fecha = "2018-07-03"
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

class ReporteProductosPDF(View):

    def cabecera(self,pdf):
            #Utilizamos el archivo logo_django.png que está guardado en la carpeta media/imagenes
            archivo_imagen = settings.MEDIA_ROOT+'/imagenes/logo.jpg'
            #Definimos el tamaño de la imagen a cargar y las coordenadas correspondientes
            pdf.drawImage(archivo_imagen, 40, 520, 120, 90,preserveAspectRatio=True)
            #Establecemos el tamaño de letra en 16 y el tipo de letra Helvetica
            pdf.setFont("Helvetica", 16)
            #Dibujamos una cadena en la ubicación X,Y especificada
            pdf.drawString(150, 570, u"Comercial Jovanny S.A.")
            pdf.setFont("Helvetica", 14)
            pdf.drawString(151, 555, u"Vengase aquí primero")
            pdf.setFont("Helvetica", 12)
            pdf.drawString(300, 510, u"Reporte general de Productos")

    def tabla(self,pdf,y):
        #Creamos una tupla de encabezados para neustra tabla
        encabezados = ('N°', 'Codigo', 'Nombre', 'Descripcion','Stock','Stock Minimo','Estado','marca','Categoria','Proveedor')
        #Creamos una lista de tuplas que van a contener a las personas
        detalles = [(prod.id,prod.codigo,prod.nombre,prod.descripcion,prod.stock,prod.stock_min,prod.estado.nombre,prod.marca.nombre,prod.categoria.nombre,prod.proveedor.nombre) for prod in productos.objects.all()]
        #Establecemos el tamaño de cada una de las columnas de la tabla
        detalle_orden = Table([encabezados] + detalles ,colWidths=[1 * cm, 2 * cm, 2.5 * cm, 4.5 * cm, 1.5 * cm, 2.5 * cm, 2 * cm, 3 * cm, 3 * cm, 3 * cm])
        #Aplicamos estilos a las celdas de la tabla
        detalle_orden.setStyle(TableStyle(
            [
                #La primera fila(encabezados) va a estar centrada
                ('ALIGN',(0,0),(3,0),'CENTER'),
                #Los bordes de todas las celdas serán de color negro y con un grosor de 1
                ('GRID', (0, 0), (-1, -1), 1, colors.black),
                #El tamaño de las letras de cada una de las celdas será de 10
                ('FONTSIZE', (0, 0), (-1, -1), 10),
            ]
        ))
        #Establecemos el tamaño de la hoja que ocupará la tabla
        detalle_orden.wrapOn(pdf, 800, 900)
        #Definimos la coordenada donde se dibujará la tabla
        detalle_orden.drawOn(pdf, 40,y)

    def get(self, request, *args, **kwargs):
            #Indicamos el tipo de contenido a devolver, en este caso un pdf
        response = HttpResponse(content_type='application/pdf')
        #La clase io.BytesIO permite tratar un array de bytes como un fichero binario, se utiliza como almacenamiento temporal
        buffer = BytesIO()
        #Canvas nos permite hacer el reporte con coordenadas X y Y
        pdf = canvas.Canvas(buffer)
        pdf.setTitle("Productos.pdf")
        pdf.setPageSize( landscape(letter) )
        #Llamo al método cabecera donde están definidos los datos que aparecen en la cabecera del reporte.
        self.cabecera(pdf)
        y = 400
        self.tabla(pdf, y)
        #Con show page hacemos un corte de página para pasar a la siguiente
        pdf.showPage()
        pdf.save()
        pdf = buffer.getvalue()
        buffer.close()
        response.write(pdf)
        return response

class ReporteProductosBajosPDF(View):

    def cabecera(self,pdf):
            #Utilizamos el archivo logo_django.png que está guardado en la carpeta media/imagenes
            archivo_imagen = settings.MEDIA_ROOT+'/imagenes/logo.jpg'
            #Definimos el tamaño de la imagen a cargar y las coordenadas correspondientes
            pdf.drawImage(archivo_imagen, 40, 520, 120, 90,preserveAspectRatio=True)
            #Establecemos el tamaño de letra en 16 y el tipo de letra Helvetica
            pdf.setFont("Helvetica", 16)
            #Dibujamos una cadena en la ubicación X,Y especificada
            pdf.drawString(150, 570, u"Comercial Jovanny S.A.")
            pdf.setFont("Helvetica", 14)
            pdf.drawString(151, 555, u"Vengase aquí primero")
            pdf.setFont("Helvetica", 12)
            pdf.drawString(270, 510, u"Reporte general de productos bajos en stock")

    def tabla(self,pdf,y):
        #Creamos una tupla de encabezados para neustra tabla
        encabezados = ('N°', 'Codigo', 'Nombre', 'Descripcion','Stock','Stock Minimo','Estado','marca','Categoria','Proveedor')
        #Creamos una lista de tuplas que van a contener a las personas
        detalles = [(prod.id,prod.codigo,prod.nombre,prod.descripcion,prod.stock,prod.stock_min,prod.estado.nombre,prod.marca.nombre,prod.categoria.nombre,prod.proveedor.nombre) for prod in productos.objects.all() if prod.stock <= prod.stock_min]
        detalle_orden = Table([encabezados] + detalles ,colWidths=[1 * cm, 2 * cm, 2 * cm, 5 * cm, 1.5 * cm, 2.5 * cm, 2 * cm, 3 * cm, 3 * cm, 3 * cm])
        #Aplicamos estilos a las celdas de la tabla
        detalle_orden.setStyle(TableStyle(
            [
                #La primera fila(encabezados) va a estar centrada
                ('ALIGN',(0,0),(3,0),'CENTER'),
                #Los bordes de todas las celdas serán de color negro y con un grosor de 1
                ('GRID', (0, 0), (-1, -1), 1, colors.black),
                #El tamaño de las letras de cada una de las celdas será de 10
                ('FONTSIZE', (0, 0), (-1, -1), 10),
            ]
        ))
        #Establecemos el tamaño de la hoja que ocupará la tabla
        detalle_orden.wrapOn(pdf, 800, 900)
        #Definimos la coordenada donde se dibujará la tabla
        detalle_orden.drawOn(pdf, 40,y)

    def get(self, request, *args, **kwargs):
        #Indicamos el tipo de contenido a devolver, en este caso un pdf
        response = HttpResponse(content_type='application/pdf')
        #La clase io.BytesIO permite tratar un array de bytes como un fichero binario, se utiliza como almacenamiento temporal
        buffer = BytesIO()
        #Canvas nos permite hacer el reporte con coordenadas X y Y
        pdf = canvas.Canvas(buffer)
        pdf.setTitle("Productos_Bajos.pdf")
        pdf.setPageSize( landscape(letter) )
        #Llamo al método cabecera donde están definidos los datos que aparecen en la cabecera del reporte.
        self.cabecera(pdf)
        y = 400
        self.tabla(pdf, y)
        #Con show page hacemos un corte de página para pasar a la siguiente
        pdf.showPage()
        pdf.save()
        pdf = buffer.getvalue()
        buffer.close()
        response.write(pdf)
        return response
