---
description: AutoHotkey ile dosya işlemleri
---

# 📂 Dosya İşlemleri

## 🏗️ AHK Dosya İşlemleri Yapısı

* ⚙️ Dosya işlemleri için `ini` dosyaları tercih edilir
* 💠 [`IniWrite`](https://www.autohotkey.com/docs/commands/IniWrite.htm), [`IniRead`](https://www.autohotkey.com/docs/commands/IniRead.htm) fonksiyonları ile dosya yönetilir

## 🧱 Temel İşlemler

| 💠 Metot | 📑 Açıklama |
| :--- | :--- |
| [FileCreateDir](https://www.autohotkey.com/docs/commands/FileCreateDir.htm) | Dizin oluşturma |
| [FileRemoveDir](https://www.autohotkey.com/docs/commands/FileRemoveDir.htm) | Dizin kaldırma |
| [FileInstall](https://www.autohotkey.com/docs/commands/FileInstall.htm) | Exe'ye dosya yükleme |
| [FileCopy](https://www.autohotkey.com/docs/commands/FileCopy.htm) | Dosya kopyalama |
| [FileCreateShortcut](https://www.autohotkey.com/docs/commands/FileCreateShortcut.htm) | Kısayol oluşturma |
| [Special Variables Available Inside a File-Loop](https://www.autohotkey.com/docs/commands/LoopFile.htm#Special_Variables_Available_Inside_a_File-Loop) | Dosya Değişkenleri |

{% hint style="warning" %}
📢 Source parametresinde değişken veya özel karakter kullanamazsın
{% endhint %}

## ⭐ Örnek Kullanım

```haskell
DIR_NAME = %A_AppData%\YHotkeys

FileRemoveDir, %DIR_NAME%, 1

FileCreateDir,  %DIR_NAME%

FileInstall, .\res\ylogo.ico, %DIR_NAME%\ylogo.ico, 1
FileInstall, .\res\default.ico, %DIR_NAME%\default.ico, 1
FileInstall, .\res\clear.ico, %DIR_NAME%\clear.ico, 1
FileInstall, .\res\close.ico, %DIR_NAME%\close.ico, 1
```

