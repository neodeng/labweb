# coding=utf-8
# Create your views here.
from django.shortcuts import render_to_response, get_object_or_404
from django.http import Http404
from home.models import Slide, News, Member, Researches, Publications, Facility

def welcome(request):
    return render_to_response("welcome.html")

def homepage(request):
    slides=Slide.objects.all()
    news=News.objects.all()
    return render_to_response("home.html",{"slides":slides,"news":news})

def homepage_en(request):
    slides=Slide.objects.all()
    news=News.objects.all()
    return render_to_response("home_en.html",{"slides":slides,"news":news})

def members(request):
    members=Member.objects.all()
    return render_to_response("members.html",{"members":members})

def research(request):
    researches=Researches.objects.all()
    return render_to_response("research.html",{"researches":researches})

def publication(request):
    publication=Publications.objects.all()
    return render_to_response("publication.html",{"publications":publication})

def facility(request):
    facility=Facility.objects.all()
    return render_to_response("facility.html",{"facility":facility})

def contact(request):
    return render_to_response("contact.html")

