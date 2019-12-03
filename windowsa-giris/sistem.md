---
description: Windows 10 hakkında faydalı ayarlar
---

# 🔨 Sistem Ayarları

## 🧱 Temel Sistem Ayarları

* Sağ alttaki ⛅ ikonundan **Ayarlar** - **Ayarlar** sekmesi - **Bilgisayar başlatıldığında OneDrive'ı başlat** seçeneğini iptal etme
* **Ayarlar** - **Sistem** - **Hakkında** - **Yeniden adlandır** ile PC'yi yeniden adlandırma
* **Ayarlar - Hesap** kısmından kullanıcı hesabı ile giriş yapma
* **Mail** uygulamasından e-posta hesabı girme
* **Gelişmiş klavye ayarları**'dan **Emoji Panel** kısmındaki işareti kaldırma
  * Birden fazla klavye varsa varsayılanı seçmek
* ❖ Win tuşuna basıp, ayarlar resmine sağ tıklayıp **Bu listeyi özelleştir** üzerinden gözükecek klasörleri ayarlamak
* 🎮 **Game Bar**'ı kapatmak

## 🚶‍♂️ Otomatik Giriş Yapma

Her defasında şifre girişi yapmaz istemezseniz, otomatik şifre girmek sizin için faydalı olacaktır.

* İlk olarak ❖ Win + R ile `Run` alanını açın
* Çıkan ekrana `netplwiz` yazın ve ENTER'a basın
* Kutucuğun işaretini kaldırın ve gerekli alana şifrenizi girip `APPLY` butonuna basın
* Şifrenizi girin ve onlayın

## 🍢 Görev Çubuğu Ayarları

❖ Win + 1 2 3 ... tuşları ile otomatik açılır

* Windows Terminal
* Chrome
* VsCode
* File Explorer
* GitHub Desktop

## 📂 Dizin Resmini Değiştirme

Dizin resimleri içerisindeki `desktop.ini` dosyası ile değiştirilmekte

* IconResource alanına `*.ico` resminizin yolunu verin
* `0` değeri ilk resim anlamına gelmektedir, **değiştirmeyiniz**

```text
[.ShellClassInfo]
IconResource=.\instabot.ico,0
[ViewState]
Mode=
Vid=
FolderType=Documents
```

## 🎌 Başlangıç Programlarını Düzenleme

Görev yöneticisi **Startup** sekmesinden veya alttaki uygulama üzerinden yönetebilirsin.

{% embed url="https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns" %}

