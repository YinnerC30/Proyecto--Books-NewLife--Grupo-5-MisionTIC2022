# Generated by Django 4.1.1 on 2022-09-15 21:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("login", "0001_initial"),
    ]

    operations = [
        migrations.DeleteModel(name="User",),
    ]