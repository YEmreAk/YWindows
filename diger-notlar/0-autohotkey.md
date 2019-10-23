---
description: Windows üzerinde kişisel kısayolları ve scriptleri oluşturmaya olanak sağlar.
---

# 💫 AutoHotkey

## 🗽 Açıklama

* Çok stabil çalışmaktadır, windows'un kendi içindeki kısayol sisteminden daha verimlidir
* VsCode üzerinden script yazacaksanız [AutoHotkey](https://marketplace.visualstudio.com/items?itemName=slevesque.vscode-autohotkey) eklentisini indirmeniz tavsiye edilir

> Windows 10'da denenmiştir.

## 🍍 Kısayol Tanımlamaları

| Symbol | Description |
| :--- | :--- |
| `#` | Win \(Windows logo key\) |
| `!` | Alt |
| `^` | Control |
| `+` | Shift |
| `&` | An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. |

> [Kısayol Tanımlamaları](https://www.autohotkey.com/docs/Tutorial.htm#s21)
>
> ## Hızlı Notlar

| Komut | Açıklama |
| :--- | :--- |
| [SetTitleMatchMode](https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm) | Pencere başlığındaki isimlerin alınışı |

## 👀 Pencere Açma, Açıksa Gizleme

* `WinName` alanına kendi pencere isminizi yazmayı unutmayın.

> Bu örnek mesajlaşma uygulamarını tek platformda sunan [Rambox](https://rambox.pro/) için kısayolunu da içerir

{% code-tabs %}
{% code-tabs-item title="ShowWindow.ahk" %}
```text
#SingleInstance Force

ToogleTray(windowName)
{
    DetectHiddenWindows, Off
    IfWinNotExist, %windowName%
    {
        WinRestore, %windowName%
        WinShow, %windowName%
        WinActivate, %windowName%
    }

    else
    {
        WinMinimize, %windowName%
        WinHide, %windowName%
    }

    return
}

ShowTray(windowName, url, mode=3)
{
    SetTitleMatchMode, %mode%
    DetectHiddenWindows, On
    IfWinExist, %windowName%
        ToogleTray(windowName)
    else
        Run, %url%

    return
}

ToggleWindow(windowName)
{
    WinGet, WinState, MinMax, %windowName%
    if (WinState == -1)
    {
        WinRestore, %windowName%
        WinActivate, %windowName%
    }
    else
    {
        WinMinimize, %windowName%
        WinMinimize, %windowName% ; Tureng için 2 tane pencere açılıyor
    }

    return
}

ShowWin(windowName, url, mode=3)
{

    SetTitleMatchMode, %mode%
    IfWinExist, %windowName%
        ToggleWindow(windowName)
    else
        Run, %url%

    return
}


ShowFolder(folderName, folderPath)
{

    SetTitleMatchMode, 3
    IfWinExist, %folderName%
    {
        ToggleWindow(windowName)
    }
    else
        Run, explorer %folderPath%
    return
}

;windowName=%A_ScriptName%ß
return

; Uygulama kısayolları Win ile başlar
#w::
    ShowTray("WhatsApp", "shell:appsFolder\5319275A.WhatsAppDesktop_cv1g1gvanyjgm!WhatsAppDesktop")
    return
#g::
    ShowTray("GitHub Desktop", "C:\Users\Yedhrab\AppData\Local\GitHubDesktop\GitHubDesktop.exe")
    return
#q::
    ShowWin("- OneNote", "shell:appsFolder\Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim", 2)
    return
#t::
    ShowWin("Tureng Dictionary", "shell:appsFolder\24232AlperOzcetin.Tureng_9n2ce2f97t3e6!App")
    return
#+t::
    ShowTray("Trello", "shell:appsFolder\45273LiamForsyth.PawsforTrello_7pb5ddty8z1pa!trello", 2)
    return

; Dizin kısayolları PgDn ile başlar
PgDn & g::
    ShowFolder("GitHub", "C:\Users\Yedhrab\Documents\GitHub")
    return
PgDn & s::
    ShowWin("ShareX", "shell:appsFolder\19568ShareX.ShareX_egrzcvs15399j!ShareX")
    return
PgDn & Shift::
    ShowFolder("Startup", "C:\Users\Yedhrab\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
    return
PgDn & i::
    ShowFolder("Icons", "C:\Users\Yedhrab\Google Drive\Pictures\Icons")
    return
PgDn & d::
    ShowFolder("Downloads", "C:\Users\Yedhrab\Downloads")
    return
PgDn & u::
    ShowFolder("Yedhrab", "C:\Users\Yedhrab")
    return


```
{% endcode-tabs-item %}
{% endcode-tabs %}

> [Minimize and Restore Window with one command](https://autohotkey.com/board/topic/49207-minimize-and-restore-window-with-one-command/?p=306623)

## 🔗 Harici Bağlantılar

* [👜 Windows Mağazasından İndirilen Uygulamaları Komut ile Çalıştırma](https://github.com/yedhrab/YWindows10/tree/0c092d489e79c475b0a1f5ae555a12a98465b295/3%20-%20Windows%2010%20Diğer%20Notlar/Windows%2010%20Diğer%20Notlar/Windows%20Mağazasından%20İndirilen%20Uygulamaları%20Komut%20ile%20Çalıştırma.md)

