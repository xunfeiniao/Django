from django.shortcuts import render, redirect
from django.urls import reverse

from .models import Book
from django.http import HttpResponse

'''作为首页进行搜索所有数据进行展示，对数据库进行查询'''
def index(request):
    books = Book.objects.all().values()#查询数据库中所有的数据
    return render(request,'index.html',context={'book':books})

'''完成对数据库添加数据的操作'''
def add(request):
    if request.method == 'GET':
        return render(request,'add.html')
    else:
        '''从前台获取传递的数据'''
        name = request.POST.get('name')
        author = request.POST.get('author')
        book = Book(name=name,author = author)#进行保存操作
        book.save()
        return redirect(reverse('index'))

'''根据数据的id号获取数据具体信息'''
def detail(request,book_id):
    books = Book.objects.filter(pk=book_id).values()#获取该id的所有信息
    return render(request,'detail.html',context={'book':books})

'''通过传递过来的id进行数据删除操作'''
def delete(request):
    if request.method == 'POST':
        book_id = request.POST.get('book_id')
        Book.objects.filter(pk=book_id).delete()#删除该id所有的信息
    return redirect(reverse('index'))

'''首先获取该数据进入编辑该数据的界面，
    然后通过提交修改的数据进行数据更新
'''
def edit(request,book_id):
    '''拿到需要修改/更新的数据'''
    books = Book.objects.filter(pk=book_id).values()
    return render(request,'edit.html',context={'book':books})
'''根据edit函数进行传递参数，完成对数据的更新操作'''
def update(request):
    book_id = request.POST.get('book_id')
    name = request.POST.get('name')
    author = request.POST.get('author')

    book = Book.objects.get(pk=book_id)
    book.name = name
    book.author = author
    book.save()

    return redirect(reverse('index'))






