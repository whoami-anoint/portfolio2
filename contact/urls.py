from django.urls import path,include

from contact import views

urlpatterns = [
    path('us/',views.contact),
]