---
description: AutoHotkey (AHK) üzerinde string işlemleri
---

# 🔤 AHK String İşlemleri

## 🌟 Sık Kullanılan Metotlar

| 💠 Metot | 📑 Açıklama |
| :--- | :--- |
| `.` | String birleştirme operatörü \(nokta\) |
| [`StrRepace`](https://www.autohotkey.com/docs/commands/StringSplit.htm) | String içerisinde metin değiştirme |
| [`InStr`](https://www.autohotkey.com/docs/commands/StringSplit.htm) | String içerisinde metin arama |
| [`StrSplit`](https://www.autohotkey.com/docs/commands/StringSplit.htm) | String ayrıştırma |

## 👨‍🔬 String Ayrıştırma

* 👨‍💼 String ayrıştırmak için [`StrSplit`](https://www.autohotkey.com/docs/commands/StringSplit.htm) metodu kullanılır
* 🚅 String verilerini `dizi` yapısında döndürmektedir
  * ❗ Dizilerin indeksi **1**'den başlamakta

```haskell
word_array := StrSplit(TestString, A_Space, ".")  ; Omits periods.
MsgBox % "The 4th word is " word_array[4]

Colors := "red,green,blue"
ColorArray := StrSplit(Colors, ",")
Loop % ColorArray.MaxIndex()
{
    this_color := ColorArray[A_Index]
    MsgBox, Color number %A_Index% is %this_color%.
}
```

