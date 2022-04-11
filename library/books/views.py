from rest_framework import viewsets
from rest_framework import permissions
from library.books.serializers import *

class AuthorViewSet(viewsets.ModelViewSet):
    queryset = Author.objects.all().order_by('name')
    serializer_class = AuthorSerializer
    permission_classes = []

class BookViewSet(viewsets.ModelViewSet):
    queryset = Book.objects.all().order_by('name')
    serializer_class = BookSerializer
    permission_classes = []

class BooksAuthorsViewSet(viewsets.ModelViewSet):
    queryset = BooksAuthors.objects.all()
    serializer_class = BooksAuthorsSerializer
    permission_classes = []

class GenreViewSet(viewsets.ModelViewSet):
    queryset = Genre.objects.all().order_by('genre')
    serializer_class = GenreSerializer
    permission_classes = []

class PublisherViewSet(viewsets.ModelViewSet):
    queryset = Publisher.objects.all().order_by('name')
    serializer_class = PublisherSerializer
    permission_classes = []

class BookGenresViewSet(viewsets.ModelViewSet):

    queryset = BookGenres.objects.all()
    serializer_class = BookGenresSerializer
    permision_classes = []