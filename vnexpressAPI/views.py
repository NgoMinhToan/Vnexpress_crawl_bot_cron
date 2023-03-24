from django.http import JsonResponse

from rest_framework import status

def index(request, **kwargs):
    return JsonResponse({
        'message': 'This is crawl bot cron!'
    }, status=status.HTTP_200_OK)
