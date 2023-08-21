from django.urls import path,include

from projects import views

urlpatterns = [
    path('pro',views.projects),
]