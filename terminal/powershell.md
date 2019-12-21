---
description: Windows PowerShell kullanımı
---

# 👨‍💻 PowerShell

## ✨ PowerShell'i Güncelleme

```perl
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
```

## 💞 Kısayol Oluşturma

* 🏗️ Kısayol oluşturmak için `Set-PSReadLineKeyHandler` 
* 🧹 Kısayol kaldırmak için `Remove-PSReadLineKeyHandler` 

```perl
Set-PSReadLineKeyHandler -Key Ctrl+w -Function BackwardKillWord
Remove-PSReadLineKeyHandler -Key Ctrl+w
```

