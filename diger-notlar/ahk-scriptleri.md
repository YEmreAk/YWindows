---
description: Kişisel kod scriptlerim
---

# 👨‍💻 AHK Scriptleri

## 👨‍💼 Pencere Yönetimi

{% tabs %}
{% tab title="Exe" %}
```bash
WinGet, id, list, ahk_exe %ahk_exe%
    Loop, %id%
    {
        this_ID := id%A_Index%
        WinGetTitle, title, ahk_id %this_ID%
        If (title = "")
            continue
        ; İşlem
    }
```
{% endtab %}

{% tab title="Class" %}
```bash
IfWinExist, ahk_class CabinetWClass
{
    IfWinNotActive, ahk_class CabinetWClass
        WinActivate, ahk_class CabinetWClass
    Else
    {
        WinMinimize
        WinHide
    }
}
```
{% endtab %}
{% endtabs %}

## 👁‍🗨 Pencereyi Gizleme / Gösterme

{% tabs %}
{% tab title="Görev Çubuğuna Alma" %}
```bash
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
```
{% endtab %}

{% tab title="İkon Kısmına Alma" %}
```bash
ToogleTray(windowName, mode=3)
{
    SetTitleMatchMode, %mode%
    DetectHiddenWindows, Off
    IfWinNotExist, %windowName%
    {
        WinShow, %windowName%
        WinActivate, %windowName%
    }

    else
    {
        WinHide, %windowName%
    }

    return
}
```
{% endtab %}

{% tab title="" %}
```bash
ToogleTrayWithId(ahkId, mode=3)
{
    SetTitleMatchMode, %mode%
    DetectHiddenWindows, Off
    IfWinNotExist, ahk_id %ahkId%
    {
        WinShow, ahk_id %ahkId%
        WinActivate, ahk_id %ahkId%
    }
    else
    {
        WinHide, ahk_id %ahkId%
    }

    return
}
```
{% endtab %}
{% endtabs %}

## ✨ Pencere Yoksa Oluşturma ve Gizleme / Gösterme

{% tabs %}
{% tab title="Görev Çubuğu" %}
```bash
ShowWin(windowName, url, mode=3)
{

    SetTitleMatchMode, %mode%
    IfWinExist, %windowName%
        ToggleWindow(windowName)
    else
        Run, %url%

    return
}
```
{% endtab %}

{% tab title="İkon" %}
```bash
ShowTray(windowName, url, mode=3)
{
    SetTitleMatchMode, %mode%
    DetectHiddenWindows, On
    IfWinExist, %windowName%
        ToogleTray(windowName, mode)
    else
        Run, %url%

    return
}
```
{% endtab %}

{% tab title="İkon 2" %}
```bash
ShowTrayWithClass(className, url, mode=3)
{
    SetTitleMatchMode, %mode%
    DetectHiddenWindows, On

    found := False
    WinGet, id, list, ahk_class %className%
    Loop, %id%
    {
        this_ID := id%A_Index%
        IfWinExist ahk_id %this_ID%
        {
            WinGetTitle, title
            If (title = "")
                continue

            ToogleTrayWithId(this_ID, mode)
            found := True
        }
    }
    If (!found)
        Run, %url%
    return
}
```
{% endtab %}
{% endtabs %}

{% hint style="warning" %}
[👁‍🗨 Pencereyi Gizleme / Gösterme](ahk-scriptleri.md#pencereyi-gizleme-goesterme) alanını kullanır
{% endhint %}

## 📂 Dizin Açma

```bash
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
```

{% hint style="warning" %}
[👁‍🗨 Pencereyi Gizleme / Gösterme](ahk-scriptleri.md#pencereyi-gizleme-goesterme) alanını kullanır
{% endhint %}

## Hesap Makinesini Tray Icon Olarak Açma

```bash
#Persistent
Menu, Tray,Icon, Calc.exe, 1
Menu, Tray, NoStandard
Menu, Tray, Add, &Calculator, Calc
Menu, Tray, Add, 
Menu, Tray, Standard
Menu, Tray, Default, &Calculator

Return


Calc:
If WinExist("Calculator")
   WinClose, Calculator
else
   Run, Calc.exe
Return
```

## Aktif Olan Tüm Pencerelerin ID'sini Alma

```text
WinGet, WindowID, List 
Loop, % WindowID { 
cWindow = % WindowID%A_Index% 
WinGetTitle, Title, ahk_id %cWindow% 
WinGetClass, Class, ahk_id %cWindow%
Message=% Message "`n" Class "`t`t" Title 
} 
MsgBox, 64, List of Visible Windows, %Message% 
ExitApp
```

