# 🤎 Cmd Komutları

## 🌟 Sık Kullanılanlar

Tabloda `< >` arasına yazılanlar sizin tarafınızdan girilecek değerlerdir.

| Komut | Açıklama |
| :--- | :--- |
| `cls` | Konsolu temizleme |
| `cd <yol>` | Dizin değiştirme |
| `mkdir <dizin_adı>` | Klasör oluşturma |
| `start <dosya` \|`dizin>` | Dosya veya dizin açma |
| `start "" <dosya | dizin | komut>` | CMD ekranı olmadan açma |
| `ren <eski_isim> <yeni_isim>` | Dosyayı yeniden adlandırma |
| `move <dosya> <konum>` | Dosyayı belirli konuma taşıma |
| `del <bayrak> <file>` | Dosya silme |
| `rd <switch> <folder>` | Dizin silme |
| `set <ortam_değişkeni>` | Ortam değişkeni tanımlama |
| `<komut> > <dosya_ismi>.<uzantı>` | Komutun çıktılarını dosyaya yazma |
| `echo >> <dosya>` | Dosyaya yazma |
| `%<değişkn>:<çıkartılacak_karakterler>` | Değişkender karakter çıkartma |
| `start "" "cmd /k <komut> <parametre>"` | Cmd'yi parametleri olarak sessiz başlatma |

* `<bayrak>` **/?** yazdığınızda çıkan /'li karakterler.
* `<değişken>` HOMEDRIVE, HOMVEPATH veya kullanıcı ortam değişkenleri
* `<çıkartılacak_karakterler>` Herhangi bir metin, harf veya sayı

> Komut kullanımlarını öğrenmek için cmd üzerinden `<komut> /?` yazabilirsin.

## ☝ Ek Komutlar

* `powershell.exe Expand-Archive "<zip_dosyası>" "<çıkarılacağı_yer>"` Sıkıştırılmış dosyayı çıkarma
* `for /f %i in ('dir /a:d /s /b A*') do echo rd /s /q %i` döngü ile dosya silme
* `if not %IDS:1=%==%IDS% /I GOTO LIGHSHOT` komutu koşullu olarak`: LIGHTSHOT` alanına gider

## 💠 CMD Operatörleri

| Şablon | Açıklama |
| :--- | :--- |
| `<komut1> & <komut2>` | Komut1 ve komut2 işlemini çalıştırır |
| `<komut1> && <komut2>` | Komut1 işlemini yaptıktan sonra komut2 işlemini çalıştırır |
| `<komut1> | <komut2>`  | Pipe, komut1'in çıktısını komut2 için kullanır |

### 

