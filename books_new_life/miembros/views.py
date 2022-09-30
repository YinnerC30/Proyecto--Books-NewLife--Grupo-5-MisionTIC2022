from re import template
from django.shortcuts import render
from django.views import generic
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.urls import reverse_lazy
from .forms import SignUpForm, UserEditForm, ProfileForm
from django.contrib.auth.views import PasswordChangeView
from django.contrib.auth.models import User

# Create your views here.


class SignUpView(generic.CreateView):
    form_class = SignUpForm
    template_name = 'registration/signup.html'
    success_url = reverse_lazy('login')


class UserEditView(generic.UpdateView):
    form_class = UserEditForm
    template_name = 'registration/edit_profile.html'
    success_url = reverse_lazy('index')

    def get_object(self):
        return self.request.user


class PasswordChangeView(PasswordChangeView):
    form_class = PasswordChangeForm
    success_url = reverse_lazy('index')
    template_name = 'registration/changepassword.html'


def ProfileView(request):
    user = request.user
    form = ProfileForm(instance=user.profile)

    return render(request, 'profile.html', {'user': user, 'form': form})
