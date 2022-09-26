from django.contrib import admin
from .models import Books, Categorias


class usuario(admin.ModelAdmin):
    list_display = ('tit', 'author', 'price')


admin.site.register(Books)
admin.site.register(Categorias)

# Register your models here.
