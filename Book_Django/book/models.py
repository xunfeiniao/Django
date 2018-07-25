# -*- coding:utf-8 -*-

from django.db import models

'''
    写好一个Book类，用该类来映射数据库，对数据库进行建表以及sql命令操作
'''

class Book(models.Model):
    '''数据库中表格的字段以及属性'''
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


