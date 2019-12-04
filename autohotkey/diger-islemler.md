# ✨ Diğer İşlemler

## 💞 Kısayollar ve Tamamlamalar

* 🧱 Kısayollar işlemleri `Hot` ön eki ile tanımlanır
* 💫 Metin düzenleme için [`HotStrings`](https://www.autohotkey.com/docs/Hotstrings.htm)
* ⭐ Klavye kısayolları için [`HotKeys`](https://www.autohotkey.com/docs/commands/Hotkey.htm)

## 🔤 HotStrings

* ✨ Metinlerin ardışık olarak yazılması ile tetiklenen kısayollardır
* 📃 Dokümanda [HotStrings](https://www.autohotkey.com/docs/commands/_Hotstring.htm) alanında açıklanır
* `::` ile tanımlanırlar
* 🧹 Bu tuşlara basılması durumunda, yazılan silinir
* 🛒 Sizin belirttiğiniz kelime yazılır
* 
### ⚙️ HotStrings Ayarları

| 💎 Özellik | 📑 Açıklama |
| :--- | :--- |
| `#Hotstring O` | Bitirme karakterini kaldırır |
| `#Hotstring r` | Sadece tuş basımını ele alır \(`SendKey` gibi durumları görmezden gelir\) |
| `#Hotstring Z` | Kısayol tetiklendikten sonra sıfırlanır \(tekrarlı kısayolları engeller\) |
| `#Hotstring C0` | Büyük küçük harfi farkını görmezden gelir |

```haskell
#Hotstring O ;Bitirme karakterleri kaldırma
#Hotstring EndChars :
    
:::help::😀
```

{% hint style="info" %}
🧙‍♂️️ Ek ayarlara [Options](https://www.autohotkey.com/docs/Hotstrings.htm#Options) alanından erişebilirsin
{% endhint %}



