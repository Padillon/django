# Generated by Django 2.0.6 on 2018-06-24 04:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0004_proveedor_telefono'),
    ]

    operations = [
        migrations.AddField(
            model_name='productos',
            name='stock',
            field=models.IntegerField(default='0', max_length=100),
            preserve_default=False,
        ),
    ]
