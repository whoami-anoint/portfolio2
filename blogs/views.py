from django.http import HttpResponse
from django.shortcuts import render

def blog1(request):
    return render(request, 'blogs/blogs.html')

def blog2(request):
    return render(request,'blogs/blog2.html')