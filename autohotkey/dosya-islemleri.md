---
description: AutoHotkey ile dosya işlemleri
---

# 📂 Dosya İşlemleri

## 🏗️ AHK Dosya İşlemleri Yapısı

* ⚙️ Dosya işlemleri için `ini` dosyaları tercih edilir
* 💠 [`IniWrite`](https://www.autohotkey.com/docs/commands/IniWrite.htm), [`IniRead`](https://www.autohotkey.com/docs/commands/IniRead.htm) fonksiyonları ile dosya yönetilir

## ✍ Dosyaya Yazma

* 💠 IniWrite metodu ile yapılır

```c
IniWrite, this is a new value, %A_ScriptDir%\temp.ini, section2, key1
IniWrite, this is a next value, %A_ScriptDir%\temp.ini, section2, key2
```

```ocaml
[section2]
key1=this is a newvalue
key2=this is a next value
```

{% hint style="info" %}
‍🧙‍♂ Detaylar için [`IniWrite`](https://www.autohotkey.com/docs/commands/IniWrite.htm) alanına bakmanda fayda var
{% endhint %}

## 👁️ IniRead ile Dosyadan Okuma

| 💠 Kod | 📝 Açıklama |
| :--- | :--- |
| `IniRead, OutputVar, Filename, Section, Key, Default` | `key` değerini okuma yoksa `Default` değerini alma |
| `IniRead, OutputVar, Filename, Section, Key` | `key` okuma |
| `IniRead, OutputVarSection, Filename, Section` | `section`değerlerini okuma |
| `IniRead, OutputVarSectionNames, Filename` | Tüm dosyadaki `section` verilerini okuma |

```c
IniRead, OutputVar, %A_ScriptDir%\temp.ini, section2, key2
if (OutputVar != "ERROR") {
    MsgBox, The value is %OutputVar%.
}
```

![](../.gitbook/assets/image%20%288%29.png)

{% hint style="info" %}
‍🧙‍♂ Detaylar için [`IniRead`](https://www.autohotkey.com/docs/commands/IniRead.htm) alanına bakmanda fayda var
{% endhint %}

