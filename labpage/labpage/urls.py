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
    url(r'^members_en/','home.views.members_en',name='members_en'),
    url(r'^research_en/','home.views.research_en',name='research_en'),
    url(r'^publication_en/','home.views.publication_en',name='publication_en'),
    url(r'^facility_en/','home.views.facility_en',name='facility_en'),
    url(r'^contact_en/','home.views.contact_en',name='contact_en'),
    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)

urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
