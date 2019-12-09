---
description: AutoHotkey ile görsel tasarım yapma
---

# 🌃 AHK ile GUI

## 🍢 `Progress` ile Dolum Animasyonları

* 🏗️ `Progress, b w200, My SubText, My MainText, My Title` yapısı ile tanımlanır
* 🔳 İlk iki parametre uzunluk ve genişlik gibi pencere bilgilerini \([Window Size, Position, and Behavior](https://www.autohotkey.com/docs/commands/Progress.htm#Window_Size_Position_and_Behavior)\) taşır
* ✨ Döngü içerisinde Progress değeri artırılarak, dolum animasyonu verilmektedir

```bash
Loop, %A_WinDir%\system32\*.*
{
    Progress, %A_Index%, %A_LoopFileName%, Installing..., Draft Installation
    Sleep, 50
    if (A_Index = 100)
        break
}
```

{% hint style="info" %}
📢 Detaylar [Progress / SplashImage](https://www.autohotkey.com/docs/commands/Progress.htm) alanında incelenmektedir
{% endhint %}

