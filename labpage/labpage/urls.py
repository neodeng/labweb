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
    url(r'^home_en/','home.views.homepage_en',name='homepage_en'),
    url(r'^members/','home.views.members',name='members'),
    # url(r'^labpage/', include('labpage.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)

urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
