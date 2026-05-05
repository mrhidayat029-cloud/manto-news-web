import datetime

from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify

# Create your models here.

x = datetime.datetime.now()

class Kategori(models.Model):
    nama = models.CharField(max_length=100)

    def __str__(self):
        return self.nama

    class Meta:
        verbose_name_plural = "1. Kategori"

class Artikel(models.Model): #membuat tabel artikel
    judul = models.CharField(max_length=255) #wajib diisi
    isi = models.TextField(blank=True, null=True)
    kategori = models.ForeignKey(Kategori, on_delete=models.SET_NULL,blank=True, null=True)
    author = models.ForeignKey(User, on_delete=models.PROTECT)
    thumbnail = models.ImageField(upload_to='artikel', blank=True, null=True)

    created_at = models.DateTimeField(auto_now_add=True)
    slug = models.SlugField(max_length=255, unique=True, blank=True, null=True)

    def __str__(self):
        return self.judul

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(f"{x.year}-{x.month}-{x.day}-{self.judul}")
        super(Artikel, self).save(*args, **kwargs)

    class Meta:
        verbose_name_plural = "2. Artikel"


###penjelasan 3 kolom###
#1.) saya membuat tabel kategori dengan cara mengisi manual lewat kolom website yang tersedia
#2.) kemudian saya membuat tabel Artikel yang berelasi dengan kategori yang telah kita buat, misalkan 
     #kategoti yg kita buat ppolitik, maka akan ada piliha artikel dengan kategori apa yg akan kita pilih
#3.) terakhir membuat tabel sosial media yang berelasi dengan judul artikel.
     #kita dapat memilih judul artikel yg kita isi sebelumnya dan menambahkan sumber beritanya secara manual,
     #dan akan terbaca di localhost.
