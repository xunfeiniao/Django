from django.shortcuts import render, redirect
from django.urls import reverse

from .models import Book
from django.http import HttpResponse

'''作为首页进行搜索所有数据进行展示'''
def index(request):
    books = Book.objects.all().values()
    return render(request,'index.html',context={'book':books})

def add(request):

    if request.method == 'GET':
        return render(request,'add.html')
    else:
        name = request.POST.get('name')
        author = request.POST.get('author')
        book = Book(name=name,author = author)
        book.save()
        return redirect(reverse('index'))

def detail(request,book_id):

    books = Book.objects.filter(pk=book_id).values()
    return render(request,'detail.html',context={'book':books})

def delete(request):

    if request.method == 'POST':
        book_id = request.POST.get('book_id')
        Book.objects.filter(pk=book_id).delete()
    return redirect(reverse('index'))

def edit(request,book_id):

    books = Book.objects.filter(pk=book_id).values()
    return render(request,'edit.html',context={'book':books})

def update(request):
    book_id = request.POST.get('book_id')
    name = request.POST.get('name')
    author = request.POST.get('author')

    book = Book.objects.get(pk=book_id)
    book.name = name
    book.author = author
    book.save()

    return redirect(reverse('index'))






