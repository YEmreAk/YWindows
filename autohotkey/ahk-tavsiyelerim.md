# 🎌 AHK Tavsiyelerim

## 🔰 Başlangıç için Notlar

* 📑 Windows arama alanına **AHK** yazdığınızda gelen uygulama üzerinden doküman dosyasına erişebilirsiniz
* 🔍 Dokümanda sıkça arama yapın

{% hint style="warning" %}
😥 Dokümantasyonu iyi olmayabilir, biraz yorulabilirsiniz.
{% endhint %}

## 📢 Önemli Notlar

* 🔢 Diziler **1** den başlıyor \(😥😥😥\)
* 👮‍♂️ `WinRestore`, `WinShow` vb. komutları sakın yalnız kullanmayın
* 👁‍🗨 `:=` ile atama işlemleri `=` ile sayı ve string girme işlemleri yapılır
* 👀 Komutlardaki `,` kullanımına dikkat edin
* 💫 For döngülerinin içerisinde döngüde kullandığınız dizinin elemanlarını silmeyin

## 🧹 AHK Scriptlerini Temizleme

* 💥 Tüm AHK scriptlerini temizleme `taskkill /im "autohotkey.exe"` 
* 🧼 Seçili AHK scriptini temizleme `wmic process where "commandline like '%%<script_ismi>.ahk'" delete`

{% hint style="warning" %}
📢 Detaylar için [How do I stop an active AutoHotkey script?](https://stackoverflow.com/questions/45700383/how-do-i-stop-an-active-autohotkey-script) sorusuna bakabilirsin
{% endhint %}

## 👨‍💻 Gelişmiş Notlar

{% embed url="https://stackoverflow.com/questions/15959042/call-autohotkey-script-from-c-sharp" %}

