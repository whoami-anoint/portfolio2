from django.urls import path,include

from poems import views

urlpatterns = [
    path('poems1',views.poems),
]