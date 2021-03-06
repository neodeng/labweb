#coding=utf-8

from django.contrib import admin
from models import Slide, Publications, New, Memberss, Researchs, Facilitys

class SlideAdmin(admin.ModelAdmin):
    list_display=['img','caption']

class PublicationAdmin(admin.ModelAdmin):
    list_display=['pubtitle','jounal', 'year']

class NewsAdmin(admin.ModelAdmin):
    list_display=['time','content']

class MemberAdmin(admin.ModelAdmin):
    list_display=['name','cls','email']

class ResearchAdmin(admin.ModelAdmin):
    list_display=['name']

class FacilityAdmin(admin.ModelAdmin):
    list_display=['name']

admin.site.register(Slide,SlideAdmin)
admin.site.register(Publications, PublicationAdmin)
admin.site.register(New, NewsAdmin)
admin.site.register(Memberss, MemberAdmin)
admin.site.register(Researchs, ResearchAdmin)
admin.site.register(Facilitys, FacilityAdmin)
