from django.http import HttpResponse
from django.shortcuts import render

def poems(request):
    return render(request, 'poems/poems.html')