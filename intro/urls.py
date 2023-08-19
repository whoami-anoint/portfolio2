from django.urls import path,include

from intro import views

urlpatterns = [
    path('',views.intro),
]