#coding=utf-8

from django.db import models
from django.db.models import permalink
# Create your models here.
class Slide(models.Model):
    img = models.FileField(upload_to='slide')
    caption = models.CharField(max_length=50, verbose_name=u'说明')

    def __unicode__(self):
        return u'%s' % self.caption

    class Meta:
        ordering = ['id']
        verbose_name_plural=verbose_name=u'首页滚动图片'

class Publications(models.Model):
    pdf = models.FileField(upload_to='pdf')
    pubtitle=models.CharField(max_length=100, verbose_name=u'题目')
    author= models.CharField(max_length=100, verbose_name=u'作者')
    jounal=models.CharField(max_length=50, verbose_name=u'期刊名')
    vol=models.IntegerField(verbose_name=u'volume')
    page=models.IntegerField(verbose_name=u'page')
    year=models.IntegerField(verbose_name=u'year')

    def __unicode__(self):
        return u'%s %d' % (self.jounal, self.year)

    class Meta:
        ordering=['-id']
        verbose_name_plural=verbose_name=u'已发表论文'

class News(models.Model):
    time=models.DateField(verbose_name=u'日期')
    content=models.CharField(max_length=500, verbose_name=u'内容')

    def __unicode__(self):
        return u'%s' % self.content

    class Meta:
        ordering=['-id']
        verbose_name_plural=verbose_name=u'实验室新闻'

class Member(models.Model):
    name= models.CharField(max_length=10, verbose_name=u'姓名')
    photo=models.FileField(upload_to='members')
    address=models.CharField(max_length=30, verbose_name=u'地址')
    cls_choices=(('Professor',u'教授'),('Associate Pro',u'副教授'),('PostDoc',u'博士后'),('Doctor',u'博士'),('Master',u'硕士'),('Bachelor',u'本科生'),('Alumin',u'已毕业学生'))
    cls=models.CharField(max_length=10, choices=cls_choices, verbose_name=u'职称')
    email=models.CharField(max_length=20, verbose_name=u'电子邮箱')

    def __unicode__(self):
        return u'%s' % self.name

    class Meta:
        ordering=['id']
        verbose_name_plural=verbose_name=u'实验室成员'

class Researches(models.Model):
    name=models.CharField(max_length=50, verbose_name=u'研究领域')
    describe=models.CharField(max_length=1000, verbose_name=u'介绍')
    img=models.FileField(upload_to='research')

    def __unicode__(self):
        return u'%s' % self.name
      
    class Meta:
        ordering=['id']
        verbose_name_plural=verbose_name=u'研究领域'

class Facility(models.Model):
    name=models.CharField(max_length=50, verbose_name=u'仪器系统名称')
    img=models.FileField(upload_to='facility')
    describe=models.CharField(max_length=1000, verbose_name=u'介绍')
    def __unicode__(self):
        return u'%s' % self.name
      
    class Meta:
        ordering=['id']
        verbose_name_plural=verbose_name=u'实验设备'
