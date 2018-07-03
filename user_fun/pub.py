from django.shortcuts import render
def check_user_login(func):
    def wrapper(request, *args, **kwargs):
        if request.session.get("user_key", None) == None:
            return render(request, "login.html")
        return func(request, *args, **kwargs)
    return wrapper