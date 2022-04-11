from . import views
from rest_framework import routers
from django.urls import path, include

#Here you add all the framework urls for the api(get,set,etc)

router = routers.DefaultRouter()
router.register(r'author', views.AuthorViewSet)
router.register(r'booksauthor',views.BooksAuthorsViewSet)
router.register(r'genre',views.GenreViewSet)
router.register(r'publisher',views.PublisherViewSet)
router.register(r'bookgenres',views.BookGenresViewSet)
router.register(r'books', views.BookViewSet)

urlpatterns = [
    path('', include(router.urls)),
]