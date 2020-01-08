---
description: Windows PowerShell kullanımı
---

# 👨‍💻 PowerShell

## ✨ PowerShell'i Güncelleme

* [👨‍💻 Powershell GitHub](https://github.com/PowerShell/PowerShell) sayfasından [🏷️ Release](https://github.com/PowerShell/PowerShell/releases) alanına girin
* 📦 MSIX paketini bulun ve indirin \([link](https://github.com/PowerShell/PowerShell/releases/download/v7.0.0-rc.1/PowerShell-7.0.0-rc.1-win-arm32.msix)\)
* 🐞 This app package is not supported for installation by App Installer because it uses certain restricted capabilities uyarısı gelirse
  * ⚙️ Ayarlardan geliştirici modunu açın
  * 👨‍💻 `Add-AppxPackage -Path $PathToMsix` komutu ile paketi kurun
  * 📢 `$PathToMsix` alanına dosya yolunu yazmayı unutmayın

{% hint style="info" %}
‍🧙‍♂ Detaylı bilgi için [Can't install msix](https://github.com/PowerShell/PowerShell/issues/10469#issuecomment-526784730) alanına bakabilirsin.
{% endhint %}

## 💞 Kısayol Oluşturma

* 🏗️ Kısayol oluşturmak için `Set-PSReadLineKeyHandler` 
* 🧹 Kısayol kaldırmak için `Remove-PSReadLineKeyHandler` 

```perl
Set-PSReadLineKeyHandler -Key Ctrl+w -Function BackwardKillWord
Remove-PSReadLineKeyHandler -Key Ctrl+w
```

