# Generated by Django 2.0.6 on 2018-06-24 20:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0009_auto_20180624_0541'),
    ]

    operations = [
        migrations.AddField(
            model_name='productos',
            name='stock_min',
            field=models.IntegerField(default='1', max_length=10000),
            preserve_default=False,
        ),
    ]