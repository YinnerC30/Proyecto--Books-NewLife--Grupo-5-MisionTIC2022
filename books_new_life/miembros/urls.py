from django.urls import path
from .views import SignUpView, UserEditView, PasswordChangeView, ProfileView, ProfileContactView
from django.contrib.auth.views import LoginView, LogoutView


urlpatterns = [
    path('login/', LoginView.as_view(template_name='registration/login.html'), name='login'),
    path('signup/', SignUpView.as_view(), name='signup'),
    path("edit_profile/", UserEditView.as_view(), name="edit_profile"),
    path("profile/", ProfileView, name="profile"),
    path("password/", PasswordChangeView.as_view(), name="recover"),
    path("contact/", ProfileContactView.as_view(), name="edit_info_contact"),



]
