#coding=utf-8

from django.contrib import admin
from models import Slide, Publications, News

class SlideAdmin(admin.ModelAdmin):
    list_display=['img','caption']

class PublicationAdmin(admin.ModelAdmin):
    list_display=['pubtitle','jounal', 'year']

class NewsAdmin(admin.ModelAdmin):
    list_display=['time','content']

admin.site.register(Slide,SlideAdmin)
admin.site.register(Publications, PublicationAdmin)
admin.site.register(News, NewsAdmin)
