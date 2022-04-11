from django.db import models

class Author(models.Model):
    name = models.CharField(max_length=128)
    last_name = models.CharField(max_length=128, null=True)

class Genre(models.Model):
    genre = models.CharField(max_length=30)
    description = models.CharField(max_length=300)

class Publisher(models.Model):
    name = models.CharField(max_length=100)

class Book(models.Model):
    name = models.CharField(max_length=256)
    published_year = models.SmallIntegerField()
    pages = models.SmallIntegerField()
    price = models.DecimalField(max_digits = 6, decimal_places =2, )
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    publishername = models.ForeignKey(Publisher, on_delete = models.DO_NOTHING, null=True)
    books_authors = models.ManyToManyField(Author, through ='BooksAuthors')
    books_genres = models.ManyToManyField(Genre, through ='BookGenres')

#Many to many
class BooksAuthors(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete =models.DO_NOTHING)
    author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete =models.DO_NOTHING)

#Many to many
class BookGenres(models.Model):
    bookname = models.ForeignKey(Book, related_name='BookWithGenre', on_delete = models.DO_NOTHING)
    selectedgenre = models.ForeignKey(Genre, related_name='GenreWithBook', on_delete =models.DO_NOTHING)
