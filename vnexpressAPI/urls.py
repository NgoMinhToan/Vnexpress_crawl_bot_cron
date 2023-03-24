from django.urls import path, re_path
from vnexpressAPI import views
urlpatterns = [
    path('', views.index),
    re_path(r'^(?P<path>.*)/$', views.index),
]
