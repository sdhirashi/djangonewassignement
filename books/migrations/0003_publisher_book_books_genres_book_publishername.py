# Generated by Django 4.0.3 on 2022-04-03 16:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0002_genre_bookgenres'),
    ]

    operations = [
        migrations.CreateModel(
            name='Publisher',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='book',
            name='books_genres',
            field=models.ManyToManyField(through='books.BookGenres', to='books.genre'),
        ),
        migrations.AddField(
            model_name='book',
            name='publishername',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='books.publisher'),
        ),
    ]
