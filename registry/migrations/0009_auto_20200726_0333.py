# Generated by Django 3.0.5 on 2020-07-26 03:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registry', '0008_auto_20200726_0332'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dna',
            name='assays',
            field=models.ManyToManyField(related_name='dnas', to='registry.Assay'),
        ),
    ]
