from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'home.views.welcome', name='welcome'),
    url(r'^home/','home.views.homepage',name='homepage'),
    url(r'^members/','home.views.members',name='members'),
    url(r'^research/','home.views.research',name='research'),
    url(r'^publication/','home.views.publication',name='publication'),
    url(r'^facility/','home.views.facility',name='facility'),
    url(r'^contact/','home.views.contact',name='contact'),
    # url(r'^labpage/', include('labpage.foo.urls')),
    
    url(r'^home_en/','home.views.homepage_en',name='homepage_en'),
    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)

urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
