---
description: Windows'un çekirdek ayarlarının bulunduğu kritik verileri düzenleme
---

# ⏹ RegEdit Ayarları

## ⏹ RegEdit Düzenleme Dosyası

Dosyanın uzantısını `.reg` olarak ayarlarsanız register düzenleme dosyası olarak açılır.

* `"`, `\` işareti gibi özel karakterleri kullanmak için `\"`,`\\` yapısını tercih etmelisin

## 🎈 Anahtar ve Değer Ekleme

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\ZEDA]
[HKEY_CURRENT_USER\Software\ZEDA\TestKey]

"Testval1"="Test 1"
"Testval2"="Test 2"
```

## ✨ Varsayılan Anahtar Değerini Güncelleme

```text
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command]
@="Test val"
```

## 🧹 Anahtar Değeri Silme

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\ZEDA\TestKey]

"Testval1"=-
```

## 🧼 Anahtar Silme

```text
Windows Registry Editor Version 5.00

[-HKEY_CURRENT_USER\Software\ZEDA\TestKey]
```

## 🎴 Resim Düzenleyicisini Değiştirme

* Arama alanına `regedit` yazıp ENTER'a basın
* Çıkan ekranda `Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command` dizinine gelin
* Default adlı anahtarın değerini `"C:\Program Files\paint.net\PaintDotNet.exe" "%1"` olarak değiştirin
  * Orjinal veri: `"%systemroot%\system32\mspaint.exe" "%1"`

> Program yolunu istediğiniz gibi ayarlayabilirsiniz

## 👨‍💻 Bat Düzenleyiciyi Değiştirme

* `HKEY_CLASSES_ROOT\batfile\shell\edit\command`

> [Stackoverflow kaynağı](https://superuser.com/a/728159/1046035)

## ⛔ Telemetry'i Kapatma

Telemetry windows'a geri bildirim yapan bir servistir.

* Kapatmak için [bu siteye](https://blogs.systweak.com/how-to-disable-telemetry-and-data-collection-in-windows-10/) bakabilirsin
* İstersen regedit değişimini; alttaki metni `txt`'te kaydedip, uzantısı `reg` yapıp çalıştırarak uygulayabilirsin
* Ya da bu [dosyayı](https://drive.google.com/open?id=1L0-VaRT7FrXauzV49DcQb5jywErS6D36) kullanabilirsiniz. \(Audio gibi algılıyor ama değil, indirip çalıştırın\)

\*.reg dosyası \`\`\`reg Windows Registry Editor Version 5.00 \[HKEY\_LOCAL\_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\] "AllowTelemetry"=dword:00000000 \`\`\`

## 🔗 Kişisel Scriptlerim

* [Görev Çubuğunda Sağ Alttaki İkonları sıfırlama.reg](https://github.com/yedhrab/YWindows10/tree/add3464e4c6b26b1ee92c6ea751e139d10adf0a0/X%20-%20Registery%20Scriptlerim/Görev%20Çubuğunda%20Sağ%20Alttaki%20İkonları%20sıfırlama.reg)
* [PaintNet'i varsayılan resim editörü yapma.reg](https://github.com/yedhrab/YWindows10/tree/add3464e4c6b26b1ee92c6ea751e139d10adf0a0/X%20-%20Registery%20Scriptlerim/PaintNet%27i%20varsayılan%20resim%20editörü%20yapma.reg)
* [Resim editörünü sıfırlama.reg](https://github.com/yedhrab/YWindows10/tree/add3464e4c6b26b1ee92c6ea751e139d10adf0a0/X%20-%20Registery%20Scriptlerim/Resim%20editörünü%20sıfırlama.reg)
* [Telemetry Kaldırma.reg](https://github.com/yedhrab/YWindows10/tree/add3464e4c6b26b1ee92c6ea751e139d10adf0a0/X%20-%20Registery%20Scriptlerim/Telemetry%20Kaldırma.reg)

