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

## 🤵 Profile Dosyası

* Powershell her açıldığında derlenen dosyadır \(linux `bash-profile.sh` gibi\)
* `%USERPROFILE%\Documents\WindowsPowerShell\profile.ps1` dizininde bulunur
* OneDrive için `%USERPROFILE%\OneDrive\Documents\WindowsPowerShell\profile.ps1`

## 💞 Kısayol Oluşturma

* 🏗️ Kısayol oluşturmak için `Set-PSReadLineKeyHandler` 
* 🧹 Kısayol kaldırmak için `Remove-PSReadLineKeyHandler` 

```csharp
Set-PSReadLineKeyHandler -Key Ctrl+w -Function BackwardKillWord
Remove-PSReadLineKeyHandler -Key Ctrl+w
```

## 🐧 Bash gibi İşlevsellikler Katma

* 📂 Profile dosyanızı açın \(🤵 Profile Dosyası alanına bakabilirsiniz\)
* 📝 Açılan dosyanın en altın alttaki kod parçasını kopyalayın

```perl
# Ctrl W tuşu ile kelime silme
Set-PSReadLineKeyHandler -Key Ctrl+w -Function BackwardKillWord

# Tab tuşu ile kelime tamamlama (Complete yerine MenuComplete tavsiye edilir)
Set-PSReadlineKeyHandler -Key Tab -Function Complete
```

{% hint style="info" %}
‍🧙‍♂ Detaylı bilgi için [How to make PowerShell tab completion work like Bash](https://stackoverflow.com/questions/8264655/how-to-make-powershell-tab-completion-work-like-bash) alanına bakabilirsin.
{% endhint %}

## 🔤 String içerisinde string arama

```csharp
// String aramaları büyük küçük harfe duyarlıdır
"yemreak.com".IndexOf("Yemreak") // -1
"yemreak.com".IndexOf("yemreak") // 0

// Aşağıdaki gibi flag vererek bunu kapatabiliriz
"yemreak.com".IndexOf("Yemreak", [System.StringComparison]::CurrentCultureIgnoreCase) // 0

```

{% hint style="info" %}
‍🧙‍♂ Detaylı bilgi için [How do I find the position of substring in PowerShell after position x?](https://stackoverflow.com/a/49843643/9770490)alanına bakabilirsin.
{% endhint %}

## 👨‍🔧 Kopyalanan Kodun Tersten Yazılma Sorunu

* Powershell farklı bir EoF karakteri ile biten scriptleri tersten kopyalayabiliyor
* Bu sorunu çözmek için önce not defterine yapıştırın, ardından oradakini kopyalayıp powershell üzerine yapıştırın

## ⏬ İndirme İşlemleri

```perl
$url = "https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.31.01_setup.exe"
$output = "$PSScriptRoot\ahk_install.exe"

$wc = New-Object System.Net.WebClient

$UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR 1.0.3705;)"
$wc.Headers.Add([System.Net.HttpRequestHeader]::UserAgent, $UserAgent);

$wc.DownloadFile($url, $output)
```

{% embed url="https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell" %}

