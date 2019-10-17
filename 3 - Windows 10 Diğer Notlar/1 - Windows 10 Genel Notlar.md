# 🌠 Windows 10 Genel Notlar

## Windows Özellikleri

> Aramaya alanına `Turn Windows Feature On or Off` veya `Windows Özelliklerini Aç veya Kapat` yazarak erişebilirsin.

### Varsayılan Windows Özellikleri

- `.NET Framework 4.7 Advanced Services`
  - `WCF Services`
    - `TCP Port Sharing`
- `Internet Explorer 11`
- `Media Features`
- `Microsoft Print to PDF`
- `Microsoft XPS Document Writer`
- `Print and Document Services`
  - `Internet Printing Client`
  - `Windows Fax and Scan`
- `Remote Differential Compression API Support`
- `SMB Direct`
- `Windows PowerShell 2.0`
- `Work Folders Client`

### Alt İşletim Sistemleri

Alt sistem kurulum dökümantasyonlarına üzerlerine tıklayarak erişlebilirsin.

- [Ubuntu bash](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Uygulama Ayarları

### Video Ayarları

| Ayar    | Ulaşım                                               | Açıklama                                           | Kaynak                                                                                                           |
| ------- | ---------------------------------------------------- | -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| Altyazı | Options - Ease of Access - Hearing / Closed captions | Yerel uygulamalardaki altyazı metnini özelleştirme | [Microsoft](https://support.microsoft.com/en-us/help/3078107/closed-captions-in-movies-tv-content-on-windows-10) |

## Terimler

- Wild Card: `..`, `.`, `*` gibi terimleri içeren kelimeye verilen isim
  - `help*`, `..\*` vs ...

## Windows 10 Ön Belleğini Temizleme

[Buraya](https://drive.google.com/open?id=1E-EDDSFxAvPM9QZAzciQ2fCaakgRwl6k) tıklayarak derlenebilir scriptimi indirip, **yönetici olarak** çalıştırman gerekmekte.

### CMD Üzerinden Önbelleği Elle Temizleme

Alttaki komut topluluğunu **yönetici olarak açtığınız cmd** üzerine yapıştırın.

```cmd
@echo off

echo "Windows Update Temizleniyor"
rd /s /q C:\Windows\SoftwareDistribution\Download
mkdir C:\Windows\SoftwareDistribution\Download

echo "Magaza Bilgileri Temizleniyor"
WSReset.exe

echo "Disk Temizleme"
cleanmgr.exe

echo "Windows Ikon ve Resim Bilgileri Siliniyor"
del /f /s /q %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\*cache*

echo "Sistem Kurtarma Bilgilerini Temizleme"
echo "Cikan Ekranda 'Yapilandir' butonuna bastiktan sonra 'Temizle' butonuna basin"
SystemPropertiesProtection.exe

```

## Hata Notları

### Görev Çubuğundan Uygulamanın Kaldırılamaması

Altataki komutları `cmd` üzerinden yazın ve ardından PC'yi yeniden başlatın.

```sh
DEL /F /S /Q /A "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /F
taskkill /f /im explorer.exe
start explorer.exe
```

> [Can't unpin a program from the taskbar ](https://answers.microsoft.com/en-us/windows/forum/windows_7-desktop/cant-unpin-a-program-from-the-taskbar/76e9bbc7-8717-4156-ab72-c9ac975dd6e9)

### Email Hesabı Kaydetme Sorunu

- `Setting` - `Privacy` başlığı altında alttaki izinleri mail uygulamasına tanıyın
  - Email
  - Account info
  - Contact

> Diğer izinleri kapatın gitsin, verilerinizi toplamasın 🧐

### Altgr gibi Tuşlar ile Özel Karakter Oluşturamama

![win_langbug](../res/win_langbug.png)

## Windows10 Insider Programı

Tanıtım videosu 📺 için [buraya](https://www.youtube.com/watch?v=wH_lKkzHHR0) bakabilirsin.

- Windows'a gelecek olan güncellemeleri erkenden deneyen kullanıcı programıdır
- `Ayarlar` > `Güncelleme ve Güvenlik` > `Windows Insider Program` ile beta kullanıcısı olabilirsiniz

### Insider Kısayolları

- <kbd>❖ Win</kbd> + <kbd>⇧ Shift</kbd> + `V` Ekranda belli bir alanı panoya kaydetme
  - Lightshot gibi

### Arka Plandaki Evolution Copy Logosunu Kaldırma

Logoyu kaldırmak için harici uygulamayı [buraya](https://drive.google.com/open?id=1LkKdUCG1XKO3mrXwNV-OK50Y8vGvLRpt) tıklayrak indirmeniz ve çalıştırmanız gerekmekte.

> Basit bit kurulumdan sonra **PC yeninden başlatılır** ve logo kalkar.

## Harici Linkler

- [How to rename image files in a folder all to .jpg format](https://answers.microsoft.com/en-us/windows/forum/windows_10-files/how-to-rename-image-files-in-a-folder-all-to-jpg/2a7e2873-e04b-472b-b239-afad2f2020fc)
- [Move Komutu](https://www.windows-commandline.com/move-files-directories/)
- [How to copy a list of file names to text file?](https://superuser.com/questions/395836/how-to-copy-a-list-of-file-names-to-text-file)
- [Windows 10 Cache Temizleme](https://www.itechtics.com/clear-types-windows-10-cache/)
- [En faydalı mağaza uygulamaları](https://www.makeuseof.com/tag/microsoft-mac-book-sell-surface-laptop/)
