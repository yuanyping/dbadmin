from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import HttpResponse,render

class M1(MiddlewareMixin):
    def process_request(self,request):
        if request.session.get("user_key", None) == None:
            return render(request, "login.html")
