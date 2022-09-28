from django.urls import path
from .views import SignUpView, UserEditView, PasswordChangeView


urlpatterns = [
    path('signup/', SignUpView.as_view(), name='signup'),
    path("edit_profile/", UserEditView.as_view(), name="edit_profile"),
    path("password/", PasswordChangeView.as_view(), name="recover")



]
