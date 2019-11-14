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

{% tab title="Second Tab" %}
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

