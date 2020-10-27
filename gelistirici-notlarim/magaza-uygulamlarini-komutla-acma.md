---
description: >-
  MSStore üzerinden indirilen uygulumalara direkt olarak erişimin nasıl
  olacağını anlatır.
---

# 🛍️ Mağaza Uygulamalarını Komutla Açma

## 👨‍💻 Tüm Komutları Görme

* 📋 Alttaki kodu ilk olarak not defterine sonra oradan kopyalayıp `PowerShell` üzerine yapıştırın
* 👁️ Aradığınız komutu görmek için uygulama ismini yazmanız yeterlidir
* 👨‍💻 Gelen komutu ❖ Win R ile açılan çalıştır penceresine yazarak uygulamayı açabilirsiniz

```bash
$appName = Read-Host "App name"
$installedapps = get-AppxPackage
foreach ($app in $installedapps)
{
    foreach ($id in (Get-AppxPackageManifest $app).package.applications.application.id)
    {
        
        $line = $app.Name + " = " + $app.packagefamilyname + "!" + $id
        if ($line.IndexOf($appName, [System.StringComparison]::CurrentCultureIgnoreCase) -ge 0) {
            echo "shell:appsFolder\$app.packagefamilyname!$id" 
        }
    }
}
```

{% hint style="info" %}
‍🧙‍♂ Komutları ilk olarak not defterine yapıştırma sebebimiz, PowerShell end of line hatasından dolayı tersten işleme almasını engellemektir
{% endhint %}

## 🤓 Gerekli Bilgileri Alma

* PowerShell üzerinden `Get-AppxPackage > appxpackages.txt` komutu ile dosyaya appx paketlerinin bilgilerini kaydedin
* `.\appxpackages.txt` komutu ile dosyayı açın
* ✲ Ctrl F ile dosya içerisinde kısayol oluşturmak istediğiniz uygulamanın adını aratın
  * Örn: `OneNote`
* Bulduğunuz uygulama bilgilerindeki alttaki kısımlar ileride kullanılacaktır:
  * `PackageFamilyName`
  * `InstallLocation`
* `cat "InstallLocation\AppxManifest.xml" | grep "Executable="`  komutunu yazın ve çıkan sonuçtaki `"Application Id="` değerini kaydedin

## 🏗️ Komutu Tanımlama

Çalıştırma komutu aşağıdaki gibi olacaktır:

* `shell:appsFolder\PackageFamilyName!Application Id`
  * `PackageFamilyName` ve `Application Id` kısmına yukarıdaki işlemlerde bulduğumuz değerleri yazacağız
* OneNote için: `shell:appsFolder\Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim`

## 🔗 Harici Bağlantılar

* [Method to open any Windows 10 Apps from command line](https://www.tenforums.com/software-apps/57000-method-open-any-windows-10-apps-command-line.html)
* [Find AppUserModelID](https://jcutrer.com/windows/find-aumid)

