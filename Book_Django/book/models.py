# -*- coding:utf-8 -*-

from django.db import models

class Book(models.Model):

    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100,null=False)
    author = models.CharField(max_length=100,null=False)

    def __str__(self):
        #内置一个打印字符串的方法
        #return (self.name,self.id,self.author)
        return '[{name},{author}]'.format(name=self.name,author = self.author)
#使用makemigrations生成迁移脚本文件
#运行python manage.py makemigrations
#运行python manage.py migrate映射到数据库


