from django.http import HttpResponse
from django.shortcuts import render

def projects(request):
    return render(request, 'projects/projects.html')