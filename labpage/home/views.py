# coding=utf-8
# Create your views here.
from django.shortcuts import render_to_response, get_object_or_404
from django.http import Http404
from home.models import Slide, News

def welcome(request):
    return render_to_response("welcome.html")

def homepage(request):
    slides=Slide.objects.all()
    news=News.objects.all()
    return render_to_response("home.html",{"slides":slides,"news":news})

def homepage_en(request):
    return render_to_response("home_en.html")

def members(request):
    return render_to_response("members.html")
