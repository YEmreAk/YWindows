---
description: Komut istemi için kod örnekleri ve faydalı kodlar
---

# 📜 CMD Kod Parçaları

## 💫 CMD Döngü Kullanımı

```bash
for /f %i in ('dir /b object_detection\protos\*.proto') do protoc object_detection\protos\%i --python_out=.
```

## 🚅 Ardışık Adlandırma

```bash
@echo off
setlocal EnableDelayedExpansion
set i=0
for %%a in (<dosya_belirteci>) do (
    set /a i+=1
    ren "%%a" "!i!.new"
)
ren *.new *.<yeni_dosya_uzantısı>
```

* `<dosya_belirteci>` Adlandırılacak dosyaların isim yapısı:
  * `*` Her dosyası adlandırır
  * `download*` 'download' ile başlayan her dosyayı adlandırır
  * `*.png` 'png' ile biten her dosyayı
* `<yeni_dosya_uzantısı>` Çıktıların uzantısı
  * `jpg`, `png`, `txt` vs ...

## 🌃 CMD'yi Arkaplanda Çalıştırma

Alttaki visual basic script'i ile bu işlemi gerçekleştirebiliriz.

* Kodları `dosyaIsmi.vbs` adlı dosya oluşturup içine yazın
* `path\to\bat` alanına `.bat` uzantılı scriptinizin yolunu yazın
* Artık `dosyaIsmi.vbs` adlı dosyanızı çalıştırdığınızda arka planda `bat` scriptiniz çalışaktır

> Görev yöneticisinden sonlandırabilrisiniz

```bash
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "path\to\bat" & Chr(34), 0
Set WshShell = Nothing
```

