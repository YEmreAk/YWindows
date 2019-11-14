# 🤔 Windows 10 Gelişmiş

## 🚶‍♂️ Otomatik Giriş Yapma

Her defasında şifre girişi yapmaz istemezseniz, otomatik şifre girmek sizin için faydalı olacaktır.

* Arama yerine `netplwiz` yazın ve ENTER'a basın
* Çıkan alandaki kutucuğun işaretini kaldırın
* Şifrenizi girin ve onlayın

## 📂 Dizin Resmini Değiştirme

Dizin resimleri içerisindeki `desktop.ini` dosyası ile değiştirilmekte

* IconResource alanına `*.ico` resminizin yolunu verin
* `0` değeri ilk resim anlamına gelmektedir, **değiştirmeyiniz**

```text
[.ShellClassInfo]
IconResource=.\instabot.ico,0
[ViewState]
Mode=
Vid=
FolderType=Documents
```

## 🎌 Startup \(Başlangıç\) Programlarını Düzenleme

Görev yöneticisi **Startup** sekmesinden veya alttaki uygulama üzerinden yönetebilirsin.

{% embed url="https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns" %}

## ⏹ RegEdit Düzenleme Dosyası

Dosyanın uzantısını `.reg` olarak ayarlarsanız register düzenleme dosyası olarak açılır.

* `"`, `\` işareti gibi özel karakterleri kullanmak için `\"`,`\\` yapısını tercih etmelisin

### RegEdit'e Anahtar ve Değer Ekleme

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\ZEDA]
[HKEY_CURRENT_USER\Software\ZEDA\TestKey]

"Testval1"="Test 1"
"Testval2"="Test 2"
```

### RegEdit Varsayılan Anahtar Değerini Güncelleme

```text
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command]
@="Test val"
```

### RegEdit Anahtar Değeri Silme

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\ZEDA\TestKey]

"Testval1"=-
```

### RegEdit Anahtar Silme

```text
Windows Registry Editor Version 5.00

[-HKEY_CURRENT_USER\Software\ZEDA\TestKey]
```

## Resim Düzenleyicisini Değiştirme

* Arama alanına `regedit` yazıp ENTER'a basın
* Çıkan ekranda `Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command` dizinine gelin
* Default adlı anahtarın değerini `"C:\Program Files\paint.net\PaintDotNet.exe" "%1"` olarak değiştirin
  * Orjinal veri: `"%systemroot%\system32\mspaint.exe" "%1"`

> Program yolunu istediğiniz gibi ayarlayabilirsiniz

## Bat Düzenleyiciyi Değiştirme

* `HKEY_CLASSES_ROOT\batfile\shell\edit\command`

> [Stackoverflow kaynağı](https://superuser.com/a/728159/1046035)

## Telemetry'i Kapatma

> Telemetry windows'a geribildirim yapan bir servistir.

* Kapatmak için [bu siteye](https://blogs.systweak.com/how-to-disable-telemetry-and-data-collection-in-windows-10/) bakabilirsin
* İstersen regedit değişimini; alttaki metni `txt`'te kaydedip, uzantısı `reg` yapıp çalıştırarak uygulayabilirsin
* Ya da bu [dosyayı](https://drive.google.com/open?id=1L0-VaRT7FrXauzV49DcQb5jywErS6D36) kullanabilirsiniz. \(Audio gibi algılıyor ama değil, indirip çalıştırın\)

\*.reg dosyası \`\`\`reg Windows Registry Editor Version 5.00 \[HKEY\_LOCAL\_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\] "AllowTelemetry"=dword:00000000 \`\`\`

## Windows Store Uygulama Dizini

* Here is the path you should follow: C:Program Files.
* Go to View and check the box next to Hidden items.
* Locate the Windows Apps folder and right-click on it.
* Select Properties from the drop-down menu.
* Select Security. Then select Advanced.
* Go to Owner. There click Change.
* Enter Microsoft account email address.
* Check the box next to ‘Replace owner on subcontainers and objects’.
* Apply your changes.
* Locate and click your account in the list. Click Edit.
* Check the box next to Full Control.

## Windows 10 Composer

> [Buradan](https://github.com/samhocevar/wincompose) detaylara erişebilirsin.

## Windows Saat Sorunu

Windows yanına linux kurulmasında gerçekleşen bu sorunun çözümü **yerel saati** kullanmaktır.

> Alttaki metinleri dosya açıp içine kopyaladıktan sonra, dosya uzantısını `reg` yapın ve çalıştırın.

### Yerel Saati Kullanma

```text
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation]
"RealTimeIsUniversal"=-
```

### Evrensel \(UTC\) Saati Kullanma

```text
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation]
"RealTimeIsUniversal"=dword:00000001
```

### Windows Boot Kurtarma

```text
diskpart
list disk
sel disk 0

list vol
sel vol 2
assign letter=G:

cd /d G:\EFI\Microsoft\Boot\
bootrec /fixboot

ren BCD BCD.old
bcdboot C:\Windows /l tr-tr /s G: /f ALL

exit
```

> [Kaynak](https://www.easeus.com/partition-manager-software/fix-uefi-boot-in-windows-10-8-7.html)

## Harici Bağlantılar

* [Windows yanına linux kurulduğunda windows saatinin bozulması](https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/)

