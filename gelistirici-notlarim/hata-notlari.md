---
description: Windows 10 üzerinde karşılaştığım hatalar için çözüm notlarım
---

# 🐞 Hata Notları

## 📧 Mail Göndermeme / Mail Uygulamasının Çalışmaması

* Arama alanına `powershell` yazın ve yönetici olarak çalıştırın
* Çıkan ekrana aşağıdaki komutu kopyalayın
* Mail uygulamasını silip, mağaza üzerinden baştan yükleyin

> 💦 Mail uygulamasını silmek için arama yerine Mail yazın, uygulamanın gösterildiği ekrandaki butonlardan kaldırmaya tıklayın.

```bash
Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*windowscommunicationsapps*"} | remove-appxprovisionedpackage –online
```

## 📶 Bluetooth ile Cihaz Bulunamaması

* Bu durum cihazınızın orijinal sürücüsünü kullanmadığınızda gerçekleşir
* Cihazın satıcısının sitesi üzerinden sürücü indirin ve bilgisayarı yeniden başlatın

{% hint style="success" %}
02.02.2021 tarihinde denenmiş, ve çalışmaktadır
{% endhint %}

