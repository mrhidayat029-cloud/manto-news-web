from django import forms
from berita.models import Artikel

class ArtikelForm(forms.ModelForm):

    class Meta:
        model = Artikel
        fields = ('judul', 'isi', 'kategori', 'thumbnail')
        widgets = {

            "judul" : forms.TextInput(
                attrs={
                'calass' : 'form-control',
                }),
            "isi" : forms.Textarea(
                attrs={
                'calass' : 'form-control',
                }),
            "kategori" : forms.Select(
                attrs={
                'calass' : 'form-control',
                }),
        }