---
description: >-
  AutoHotkey (AHK) hakkında temel bilgiler ve işlemler, temel autohotkey
  kullanımı
---

# 🧱 AHK Temel İşlemler

## 💎 Değişkenler

* ✨ Değişkenlerin atama işlemleri `:=` ile yapılır
* 📢  \(`=` ile string ya da sayı atanır\)
* 💠 Değişkenlerin varsayılan komutlar içerisindeki kullanımı `%değişken%` şeklindedir
* ✨ Diğer kullanımlarda normal kullanabilirsiniz
* 📣 Stringler `.` operatörü ile toplanır \(`+` değil\)

{% hint style="info" %}
👀 Detaylar için [Variable & Expression](https://www.autohotkey.com/docs/Variables.htm) alanına bakabilirsin
{% endhint %}

## 👮‍♂️ Koşullar

* 🧱 Koşullardaki temel kullanım `if`, `else if` ve `else` şeklindedir
* 💡 Eğer tek değişkeni kontrol edecekseniz `()` kullanmanıza gerek yoktur
* 🔱 Eğer tek satır yazacaksanız `{}` kullanımına gerek yoktur

```haskell
if WinActive("ahk_id" . ahkID) {
    if hide
        SendActiveWindowToTray()
    
    RestoreFocus()
} else {
    ActivateWindowWithID(ahkID)
}
```

## 🚄 Diziler

* 📢 Diziler **1** den başlar \(😥\)
* 🚅 Dizi tanımlamaları `arr := []` şeklindedir
* 🎳 Dizi içerisinde obje olacaksa `arrObj := [{}]` şeklinde olmalıdır
* ‍🛒 Dizilerden elaman alımı `arr.1`, `arr[1]`, `arr[help]` veya `arr.help` şeklindedir

{% hint style="info" %}
👀 Diziler hakkında detaylı bilgi için [AHK - Arrays](https://www.autohotkey.com/docs/misc/Arrays.htm) alanına bakabilirsin
{% endhint %}

## 💡 Ekrana Metin Bastırma

* 👁‍🗨 Ekrana metin gösterme `MsgBox` ile yapılır
* ✨ Eğer değişken kullanmak istiyorsanız `MsgBox, % <değişken> <değişken>` komutunu kullanın

## 👨‍💼 Pencere Yönetimi

* 🌟 `WinActive(..)` ile aktiflik kontrolü 
* ⭐ `WinExist(...)` ile varlık kontrolü 

```haskell
if WinExist(windowName) {
    WinGet, ahkID, ID, %windowName%
    ToggleWindowWithID(ahkID, mode, True)
} else {
    RunUrl(url)
}
```

{% hint style="info" %}
👀 Detaylı bilgi için [WinActive](https://www.autohotkey.com/docs/commands/WinActivate.htm) ve [WinExist](https://www.autohotkey.com/docs/commands/WinExist.htm#function) alanına bakabilirsin
{% endhint %}

## 🚀 Tray Menü Oluşturma

* 🦄 `#Persistent` ile tekrarlı menüleri engelleyebilirsin
* 💎 Menu olaylarında kullanabileceğin değişkenlere [Hotkeys, Hotstrings, and Custom Menu Items](https://www.autohotkey.com/docs/Variables.htm#h) alanından bakabilirsin

```haskell
#Persistent
Menu, Tray, NoStandard
Menu, Tray, Add, YEmreAk, IconClicked
Menu, Tray, Default, %mainTitle%

IconClicked:
    Run, https://www.yemreak.com
Return
```

{% hint style="info" %}
👀 Detaylı bilgi için [Menu](https://www.autohotkey.com/docs/commands/Menu.htm) alanına bakabilirsin
{% endhint %}

## 🌃 Ortam Değişkenleri

* 📉 Ortam değişkenleri direkt olarak kullanmak verimliliği düşürür
* 👮‍♀️`#NoEnv` kodu ile scriptlerinize başlayın
* 🧱 Temel ortam değişkenlerini `A_değişken`kodu ile kullanabilirsin
  * 👀 Dokümanda [Operating System and User Info](https://www.autohotkey.com/docs/Variables.htm#os) alanında açıklanmaktadır
* 🛒 Ortam değişkenleri işlemleri için `EnvGet` ve `EnvSet` yapısı kullanılır
  * 👀 Detaylı bilgi için [NoEnv](https://www.autohotkey.com/docs/commands/_NoEnv.htm), [EnvGet](https://www.autohotkey.com/docs/commands/EnvGet.htm) ve [EnvSet](https://www.autohotkey.com/docs/commands/EnvSet.htm) alanına bakabilirsin

```haskell
EnvGet, userprofile, UserProfile
path = %userprofile%Documents
```

