from django.urls import path
from .views import SignUpView, UserEditView, PasswordChangeView
from django.contrib.auth.views import LoginView, LogoutView


urlpatterns = [
    path('login/', LoginView.as_view(template_name='registration/login.html'), name='login'),
    path('signup/', SignUpView.as_view(), name='signup'),
    path("edit_profile/", UserEditView.as_view(), name="edit_profile"),
    path("password/", PasswordChangeView.as_view(), name="recover")



]
