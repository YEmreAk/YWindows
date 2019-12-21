---
description: CMD üzerinden dosya veya program indirme aracı
---

# 👨‍💼 Paket Yöneticisi

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

## ⏬ Topluca Uygulama Kurulumu

Yukarıdakileri tek tek kurmak yerine alttaki komutu `cmd`'ye kopyalayarak hem **chocolatey**'i hem de uygulamaları kurabilirsin

```bash
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile \
-InputFormat None -ExecutionPolicy Bypass -Command "iex \
((New-Object System.Net.WebClient).DownloadString(\
'https://chocolatey.org/install.ps1'))" && \
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -y firacode winrar youtube-dl wget vscode github-desktop python3 git --params "/GitAndUnixToolsOnPath /NoShellIntegration /WindowsTerminal"
```

{% hint style="warning" %}
📢 Bu scripti kendine göre şekillendirmeni tavsiye ederim
{% endhint %}

