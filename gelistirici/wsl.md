# 🌇 Windows Subsystem for Linux \(WSL\)

## 🚀 Windows Üzerinden Linux Kullanma

`Turn Windows features on or off` ayarına girip, `Windows Subsystem for Linux` kutucuğunu işaretleyin.

* Bu işlemle Linux subsystem olarak devreye girebilecektir
* Ardından store üzerinden 🐧 [Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab)'yu indirin \(ya da başka bir distro\)
* Ubuntu'yu çalıştırıp gerekli kurulumları yapın, kullanıcı adı ve şifrenizi oluşturun
* `bash` komutu ile yüklü olan Linux'un terminaline erişebilirsiniz

{% hint style="success" %}
[Windows Terminal \(Preview\)](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot:overviewtab) ile Ubuntu terminalinizi yönetebilirsiniz
{% endhint %}

## 🔇 Terminel Sesini Kapatma

* `sudo nano /etc/inputrc` ile girdi dosyasını yetki ile açın
* `set bell-style none` satırını yorum satırı olmaktan kaldırın
* ✲ Ctrl + O ile düzenlemeyi kaydedin
* ✲ Ctrl + X ile çıkın

## 🌄 Linux Uygulamalarını WSL Üzerinde Çalıştırma

* İlk olarak \[vcxsrv\] dosyasını indirin \(~ 37.8MB\)
* `echo "export DISPLAY=localhost:0.0" >> ~/.bashrc` komutunu yazın
* `sudo apt install dbus-x11` ile gereksinimleri indirin
  * Alttaki komutlara gerekirse yapılmalıdır
  * `sudo service dbus start` [kaynak](https://github.com/Microsoft/WSL/issues/2016#issuecomment-435091497)
  * `export $(dbus-launch)` [kaynak](https://github.com/Microsoft/WSL/issues/2016#issuecomment-462595967)

## ✨ WSL'i Ubuntu'nun Son Sürümüne Güncelleme

```bash
# Güncelleme ön hazırlığı
sudo apt update && sudo apt dist-upgrade
sudo apt install update-manager-core

# # Prompt=normal olarak ayarlayın CTRL+O ve CTRL+X ile kaydedin
sudo nano /etc/update-manager/release-upgrades

sudo sed -i 's/bionic/disco/g' /etc/apt/sources.list # Bionic'i Disco yapmak

# Minimalist güncelleme
sudo sed -i 's/^/#/' /etc/apt/sources.list.d/*.list # 3.parti yazılımları kaldırma (PPA)
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade # Tam yükseltme

# Sonucu görme
lsb_release  -a
```

```text
Distributor ID: Ubuntu
Description:    Ubuntu 19.04
Release:        19.04
Codename:       disco
```

> [Kaynak](https://www.linuxbabe.com/ubuntu/upgrade-ubuntu-18-04-18-10-to-ubuntu-19-04)

