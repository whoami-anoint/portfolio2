from django.urls import path,include

from blogs import views

urlpatterns = [
    path('blog1/',views.blog1),
]