from django.contrib import admin
from pengguna.models import Biodata

# Register your models here.
class BiodataAdmin(admin.ModelAdmin):
    list_display = ['user', 'alamat', 'telpon']
    search_field = ['user__username'] #code ini untuk membuat kolom pencarian user
admin.site.register(Biodata, BiodataAdmin)