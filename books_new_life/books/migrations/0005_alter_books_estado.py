# Generated by Django 4.1.1 on 2022-09-24 21:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("books", "0004_books_categoria_books_estado"),
    ]

    operations = [
        migrations.AlterField(
            model_name="books", name="estado", field=models.IntegerField(choices=[]),
        ),
    ]
