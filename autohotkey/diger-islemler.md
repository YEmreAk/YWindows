# 💞 AHK Kısayollar

## 🔰 Kısayolları Tanıyalım

* 🧱 Kısayollar işlemleri `Hot` ön eki ile tanımlanır
* 💫 Metin düzenleme için [`HotStrings`](https://www.autohotkey.com/docs/Hotstrings.htm)
* ⭐ Klavye kısayolları için [`HotKeys`](https://www.autohotkey.com/docs/commands/Hotkey.htm)

## 🔤 HotStrings

* ✨ Metinlerin ardışık olarak yazılması ile tetiklenen kısayollardır
* 📃 Dokümanda [HotStrings](https://www.autohotkey.com/docs/commands/_Hotstring.htm) alanında açıklanır
* `::` ile tanımlanırlar
* 🧹 Bu tuşlara basılması durumunda, yazılan silinir
* 🛒 Sizin belirttiğiniz kelime yazılır

{% hint style="info" %}
‍🧙‍♂ AHK başlangıç dökümanındaki [2 - Hotkeys & Hotstrings](https://www.autohotkey.com/docs/Tutorial.htm#s2) alanına bakmanda fayda var
{% endhint %}

### ⚙️ HotStrings Ayarları

| 💎 Özellik | 📑 Açıklama |
| :--- | :--- |
| `#Hotstring O` | Bitirme karakterini kaldırır |
| `#Hotstring r` | Sadece tuş basımını ele alır \(`SendKey` gibi durumları görmezden gelir\) |
| `#Hotstring Z` | Kısayol tetiklendikten sonra sıfırlanır \(tekrarlı kısayolları engeller\) |
| `#Hotstring C0` | Büyük küçük harfi farkını görmezden gelir |

### ⭐ HotStrings Örneği

```haskell
#Hotstring O ; Bitirme karakterleri kaldırma
#Hotstring EndChars :
    
:::help::😀
```

{% hint style="info" %}
🧙‍♂️️ Ek ayarlara [Options](https://www.autohotkey.com/docs/Hotstrings.htm#Options) alanından erişebilirsin
{% endhint %}

## ⌨️ Hotkeys

* ✨ Klavye kısayolları `<buton>::` yapısı ile oluşturulur
* 👮‍♂️ Sadece belirli pencerelerde çalışan kısayollar için [Remarks About Hotkey, If](https://www.autohotkey.com/docs/commands/Hotkey.htm#IfWin) __alanına bakmalısın

{% hint style="danger" %}
📢️ İşlemin sonunda `return` yazmayı unutma, aksi halde altındakiler de çalışır.
{% endhint %}

### ✨ Hotkeys Butonları

| Symbol | Description |
| :--- | :--- |
| `#` | Win \(Windows logo key\) |
| `!` | Alt |
| `^` | Control |
| `+` | Shift |
| `&` | An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. |

### ⭐ HotKeys Örneği

```haskell
#+G::
    Send ^c
    Sleep, 50
    Run "http://www.google.com/search?q=%clipboard%"
return
```

