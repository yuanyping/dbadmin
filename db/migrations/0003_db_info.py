# Generated by Django 2.0.6 on 2018-06-26 10:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0002_user_info_user_email'),
    ]

    operations = [
        migrations.CreateModel(
            name='db_info',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('db_name', models.CharField(max_length=255)),
                ('db_ip', models.CharField(max_length=255)),
                ('db_user', models.CharField(max_length=255)),
                ('db_password', models.CharField(max_length=255)),
                ('db_prefix', models.CharField(max_length=255)),
                ('db_v', models.CharField(max_length=255)),
            ],
        ),
    ]