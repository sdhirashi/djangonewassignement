import pytest
from library.books.models import *

@pytest.mark.django_db
def test_author_name():
    author = Author.objects.create(name='Paulo', last_name='Coelho')
    print('This is my authors name',author.name)
    assert author.last_name == 'Coelho'
    assert Author.objects.all().count() == 1
    author.delete()
    assert Author.objects.all().count() == 0

@pytest.mark.django_db
def test_no_author():
    count = Author.objects.all().count() 
    print('This is the number of authors', count)
    assert Author.objects.count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, text',
    (
        ('Fantasy','About Fantasy'),
        ('Horror','About Horror'),
        ('Romance','About Romance')
    )
)
def test_create_genre(name,text):
    newgenre = Genre.objects.create(genre=name, description=text)
    count = Genre.objects.all().count()
    print('This is my genre:', newgenre.genre, '. About:', newgenre.description)
    newgenre.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, text, newname, newtext',
    (
        ('Fantasy','About Fantasy','Fantasy','New Fantasy'),
        ('Horror','About Horror','Horror','New Horror'),
        ('Romance','About Romance','Sci-Fi','New Entry')
    )
)
def test_same_genre(name,text,newname,newtext):
    newgenre = Genre.objects.create(genre=name, description=text)
    print('This is the original genre:', newgenre.genre,'. About:', newgenre.description)
    if newgenre.genre == newname:
        print('Genre already exists:',newgenre.genre)
    else: newgenre = Genre.objects.create(genre=newname,description=newtext)
    print('This is the new genre:', newgenre.genre,'.About:', newgenre.description)
    newgenre.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, text, newname',
    (
        ('Fantasy','About Fantasy','Sci-Fi'),
        ('Horror','About Horror','Suspense'),
        ('Romance','About Romance','Love')
    )
)
def test_modify_genre(name,text,newname):
    newgenre = Genre.objects.create(genre=name, description=text)
    print('This is the original genre:', newgenre.genre,'. About:', newgenre.description)
    newgenre.genre = newname
    print('This is the modified genre:', newgenre.genre,'.About:', newgenre.description)
    newgenre.delete()
    assert Genre.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'name',
    (
        ('Salamanca'),
        ('Mexicana'),
        ('Colombiana')
    )
)
def test_create_publisher(name):
    publisher = Publisher.objects.create(name = name)
    print('This is the new publisher:', publisher.name)
    publisher.delete()
    assert Publisher.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'name,newname',
    (
        ('Salamanca','Salamander'),
        ('Mexicana','Maya'),
        ('Colombiana','Peruana')
    )
)
def test_modify_publisher(name,newname):
    publisher = Publisher.objects.create(name = name)
    print('This is the original publisher:', publisher.name)
    publisher.name = newname
    print('This is the modified publisher:', publisher.name)
    publisher.delete()
    assert Publisher.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'publishername,genrename,genretext,bookname,bookpy,bookpages,bookprice,bookca,bookua',
    (
        ('Salamanca','Fantasy','About it','Harry Potter','1998','500','10','15','16'),
        ('Mexicana','Suspense','About it','Pet Sematary','1980','300','12','16','18'),
        ('Colombiana','Horror','About it','Call of Cthulu','1970','1000','11','13','14')
    )
)
def test_create_bookgenre(publishername,genrename,genretext,bookname,bookpy,bookpages,bookprice,bookca,bookua):
    publisher = Publisher.objects.create(name = publishername)
    pubid= publisher.id
    genre = Genre.objects.create(genre=genrename,description=genretext)
    genid= genre.id
    book = Book.objects.create(name=bookname,published_year=bookpy,pages=bookpages,price=bookprice,created_at=bookca,updated_at=bookua,publishername_id=pubid)
    bookid=book.id
    bookgenre = BookGenres.objects.create(bookname_id=bookid,selectedgenre_id=genid)
    print('This is the bookid:',bookid,'. This is the genre id:',genid)
    publisher.delete()
    genre.delete()
    book.delete()
    bookgenre.delete()
    assert Genre.objects.all().count() == 0
    assert Publisher.objects.all().count() == 0
    assert Book.objects.all().count() == 0
    assert BookGenres.objects.all().count() == 0

@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
    #from django.dj.models.query import QuerySet
    author = Author.objects.create(name='nombre',last_name='apellido')

    def model_count_mock():
        return 4
    print(dir(Author.objects))
    monkeypatch.setattr(Author.objects,'count',model_count_mock)

    assert Author.objects.count() == 4
    print('Haciendo el monkeypatch')

    