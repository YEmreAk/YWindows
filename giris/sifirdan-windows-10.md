---
description: "Kişisel windows ayarlarım ile \U0001F4C8 üretkenliğini arttırmaya ne dersin?"
---

# 🚀 Sıfırdan Windows 10

## 🚀 Sıfırdan Windows 10

![](../.gitbook/assets/windows_10_pic.png)

### 👷‍ Windows 10 Kurulumu

Wİndows 10 son sürümünü indirmek için [buraya](https://www.microsoft.com/tr-tr/software-download/windows10) tıklayabilirsin.

**Media creating tools kullanmadan indirme:**

Siteye girdiğinizde sırasıyla alttaki ayarları açamınız \| seçmeniz gerekmekte:

* Geliştirici Ayarları
* _Network conditions_
* _User Agent_ başlığı altında
  * _Select automatically_ seçimini kaldırın
  * _Safari – iPad iOS 9_
* Sayfayı yenileyin

> Detaylı bilgi için [buraya](https://pureinfotech.com/download-windows-10-iso-without-media-creation-tool/) tıklayabilirsin.

### 📦 Windows 10 Uygulamalarının Kurulumu

#### 👜 Windows Store Üzerinden Uygulamarın Kurulumu

| Uygulama | Açıklama |
| :--- | :--- |
| [🎴 Sharex](https://www.microsoft.com/tr-tr/p/sharex/9nblggh4z1sp?activetab=pivot%3Aoverviewtab) | Ekran görüntüsü alma \([detaylar](https://www.youtube.com/watch?v=NB32QYt8WfI)\) |
| [🔍 Quick Look](https://www.microsoft.com/tr-tr/p/quicklook/9nv4bs3l1h4s?activetab=pivot:overviewtab) | Dosyaları açamadan SPACE ile önizleme |
| [🆗 Tureng Sözlük](https://www.microsoft.com/tr-tr/p/tureng-sozluk/9wzdncrfjb1g?utm_source=AppAgg.com&utm_medium=AppAgg&utm_campaign=AppAgg&rtc=1&activetab=pivot:overviewtab) | İngilizce - Türkçe Sözlük |
| [🖤 Windows Terminal](https://www.microsoft.com/tr-tr/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot:overviewtab) | Windows'un yeni şık terminali |
| [👨‍💼 Trello](https://www.microsoft.com/tr-tr/p/trello/9nblggh4xxvw?activetab=pivot:overviewtab) | Proje yönetim uygulaması |
| 🎴 Snip & Sketch | Ekran görüntsü yakalayıcı ❖ Win⇧ Shift S |
| 📔 OneNote | Not alma uygulaması |
| 🤝 Quick Assist | Ekran paylaşım ve yönetim aracı \(team viewer gibi\) |

> Store üzerinden indirilen Python, Git Bash üzerinden kullanılamıyor \(`Permission denied`\). Bu yüzden store'dan değil web sitesinden indirilmeli.

#### 🤸‍ Store Uygulamları için Kişiselleştirmelerim

* [Sharex yapılandırma ayarlarım](https://drive.google.com/uc?id=18qJhuV9gOZYnRBdKklEA0UmMnwyJO8xV)
* [Windows terminal yapılandırma ayarlarım](https://gist.github.com/yedhrab/748ed0216864c3ea0dea224d988c97cb)

#### 🌤 İnternet Üzerinden Uygulamaların Kurulumu

| Uygulama | Açıklama |
| :--- | :--- |
| [🔁 Easy Windows Switcher](https://neosmart.net/EasySwitch/) | ⎇ Alt " ile aynı pencereler arasında geçiş |
| [📂 Clover](http://en.ejie.me/) | Dosya gezginine tarayıcılardaki gibi sekme ekleme |
| [🌍 Chrome](https://www.google.com/chrome/) | Tarayıcı |
| [🌍 Brave](https://brave.com/) | Reklamsız Chromium tabanlı tarayıcı |
| [👨‍💻 VsCode](https://code.visualstudio.com/download) | Kodlama için editör |
| [🔤 FiraCode](https://github.com/tonsky/FiraCode) | Kodlama fontu \(`ttf` dizinindekiler kurulacak\) |
| [📂 Winrar](https://www.win-rar.com/download.html?&L=0) | Sıkıştırılmış dosyaları açma |
| [📨 Rambox](https://rambox.pro/#pricing) | Mesajlaşma uygulamalarının yönetimi |
| [🌳 Git](https://git-scm.com/downloads) | Proje versiyon yönetim uygulaması |
| [🐙 Github Desktop](https://desktop.github.com/) | GitHub için yönetim uygulaması |
| [🏢 Office](https://bit.ly/2kjVZe9) | MS Office |
| [📂 Backup and Sync](https://www.google.com/drive/download/backup-and-sync/) | Drive backup |
| [✨ Numix Cursor Theme](https://drive.google.com/uc?id=1odtFIqAEfnvBH5Zk5ZefPnm77kZIxxQp) | Mouse teması |
| [📐 PaintNet](https://www.dotpdn.com/downloads/pdn.html) | Resim düzenleme uygulaması |
| [🍫 Chocolatey](https://chocolatey.org/) | Windows paket yöneticisi |
| [💫 AutoHotkey](https://www.autohotkey.com/) | Kısayol oluşturucu ve scripting |
| [📹 Zoom](https://zoom.us/) | Online , toplantı ve görüntülü konuşma uygulaması |
| [🔄 AeroAdmin](https://www.aeroadmin.com/en/downloads.html) | Çok basit, hızlı uzak masaüstü bağlantısı |

## 🍫 Chocolatey Paket Yöneticisi

Windows için popüler olan **Chocolatey** paket yöneticisi, powershell üzerinden `choco install <paket>` komutuyla yükleme yapmanızı sağlar.

* Resmi sitesine [buraya](https://chocolatey.org/) tıklayarak erişebilirsin.
* Başlangıç videosu için [buraya](https://www.youtube.com/watch?v=hfgZYpo5moA) bakabilirsin
* Yükleyebileceğin paketler için [buraya](https://chocolatey.org/packages) bakabilirsin

#### Hızlı Komut Bilgisi

| Komut | Açıklama |
| :--- | :--- |
| `choco list -lo` | Yüklü yerel uygulamaları gösterir |
| `choco install -y <paket>` | Paketi sessiz yükleme |
| `choco uninstall <paket>` | Paket kaldırma |
| `choco install -y <paket> --params "<parametreler>"` | Paketi belirli ayarlarla sessiz kurma |

#### 🍫 Chocolatey ve Tüm Uygulamaların Kurulum Scripti

Yukarıdakileri tek tek kurmak yerine alttaki komutu `cmd`'ye kopyalayarak hem **chocolatey**'i hem de uygulamaları kurabilirsin

> ⚠ Bu scripti kendine göre şekillendirmeni tavsiye ederim

```text
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y firacode winrar youtube-dl wget vscode github-desktop python3 git --params "/GitAndUnixToolsOnPath /NoShellIntegration /WindowsTerminal"
```

#### 🤸‍ İnternet Uygulamları için Kişiselleştirmelerim

* 🎇 Chrome eklentilerin:
  * [The Great Suspender](https://chrome.google.com/webstore/detail/the-great-suspender/klbibkeccnjlkjkiokjodocebajanakg?hl=en)
  * [Google Translate](https://chrome.google.com/webstore/search/translate?hl=en)
  * [OneTab Plus:Tab Manage & Productivity](https://chrome.google.com/webstore/detail/onetab-plustab-manage-pro/lepdjbhbkpfenckechpdfohdmkhogojf?hl=en)
  * [Grammarly for Chrome](https://chrome.google.com/webstore/detail/grammarly-for-chrome/kbfnbcaeplbcioakkpcpgfkobkghlhen?hl=en)
  * [Ad Block Plus](https://chrome.google.com/webstore/detail/adblock-plus-free-ad-bloc/cfhdojbkjhnklbpkdaibdccddilifddb)
  * [Popup Blocker](https://chrome.google.com/webstore/detail/pop-up-blocker-for-chrome/bkkbcggnhapdmkeljlodobbkopceiche)
* ⚒ Git kurulumu kişiselleştirmem:
  * **Windows explorer entegration** kapalı
  * **Use Visual Studio Code as Git's default editor**
  * **Use Git and optional Unix Tools from the Command Prompt**
  * Bash komutlarını windows terminalde kullabiliriz
  * **Use default windows console window**
* 🥧 VsCode kişiselleştirmemi [Settings Sync](https://marketplace.visualstudio.com/itemdetails?itemName=Shan.code-settings-sync) eklentisi yardımıyla [GitHub Gist](https://gist.github.com/yedhrab/4b13743a36cece5c3c22a5042897a83d)'im üzerinden çekebilirsin
* Backup and Sync için, PC açıldığında otomatik olarak açılmasını iptal et
  * Sağ alttaki ☁ ikonuna sağ tık
  * **Üç nokta ikonu** - **Pereferences** - **Settings** - **Open Backup when system starts** işarteni kaldır
* 🔧 PaintNet'i varsayılan resim editörü yapmak için [Registery Scriptlerim](https://github.com/yedhrab/YWindows10/tree/0c092d489e79c475b0a1f5ae555a12a98465b295/1%20-%20Sıfırdan%20Windows%2010/Registery%20Scriptlerim/README.md) alanındanki [PaintNet'i varsayılan resim editörü yapma](https://github.com/yedhrab/YWindows10/tree/0c092d489e79c475b0a1f5ae555a12a98465b295/1%20-%20Sıfırdan%20Windows%2010/Registery%20Scriptlerim/PaintNet%27i%20varsayılan%20resim%20editörü%20yapma.reg) aracını kullanabilrisin.

### 🔨 Windows 10 Sistem Ayarları

#### 🧱 Temel Sistem Ayarları

* Sağ alttaki ☁ ikonundan **Ayarlar** - **Ayarlar** sekmesi - **Bİlgisayar başlatıldığında OneDrive'ı başlat** seçeneğini iptal etme
* **Ayarlar** - **Sistem** - **Hakkında** - **Yeniden adlandır** ile PC'yi yeniden adlandırma
* **Ayarlar - Hesap** kısmından kullanıcı hesabı ile giriş yapma
* **Mail** uygulamasından e-posta hesabı girme
* **Gelişmiş klavye ayarları**'dan **Emoji Panel** kısmındaki işareti kaldırma
  * Birden fazla klavye varsa varsayılanı seçmek
* ❖ Win tuşuna basıp, ayarlar resmine sağ tıklayıp **Bu listeyi özelleştir** üzerinden gözükecek klasörleri ayarlamak
* 🎮 **Game Bar**'ı kapatmak

#### 🔑 Otomatik Olarak Oturum Açma

* İlk olarak ❖ Win + R ile `Run` alanını açın
* Çıkan ekrana `netplwiz` yazın ve ENTER'a basın
* Kutucuğun işaretini kaldırın ve gerekli alana şifrenizi girip `APPLY` butonuna basın

#### 🍢 Görev Çubuğu Ayarları

❖ Win + 1 2 3 ... tuşları ile otomatik açılır

* Windows Terminal
* Chrome
* VsCode
* File Explorer
* GitHub Desktop

### 📂 Temel Dizinler

Alttaki komutları ❖ Win + R ile açılan **run** pencerisine yazmanız gerekmekte.

* `shell:startup` Başlangıçta çalışan uygulamalar
* `shell:AppsFolder` Tüm uygulamalar

### 📀 Uygulama Verileri

* `C:\Users\%username%\AppData\Roaming` yani `%appdata%` dizininde yer alır.
  * Arama yerine `%appdata%` yazarak erişebilirsin
* `C:\Users\%username%\AppData\Local`
* `C:\ProgramData`

### 🔗 Harici Bağlantılar

* [🧱 Windows Sağ Tık Menüsünü Özelleştirme](https://github.com/yedhrab/YWindows10/tree/0c092d489e79c475b0a1f5ae555a12a98465b295/1%20-%20Sıfırdan%20Windows%2010/Windows%2010%20Diğer%20Notlar/Windows%20Sağ%20Tık%20Menüsünü%20Özelleştirme.md)
* [🌆 Windows Ortam Değişkenleri](https://github.com/yedhrab/YWindows10/tree/0c092d489e79c475b0a1f5ae555a12a98465b295/1%20-%20Sıfırdan%20Windows%2010/Windows%2010%20Diğer%20Notlar/Windows%20Ortam%20Değişkenleri.md)

