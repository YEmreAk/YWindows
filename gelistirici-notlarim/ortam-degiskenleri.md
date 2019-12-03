# 🌃 Ortam Değişkenleri

## 🔰 Temel Kullanım

* 🛒 CMD üzerinden `%` karakterleri arasına yazılarak kullanılır
* 💁‍♂️`%var1%%var2%`şeklinde de kullanılabilir

```bash
<command> %<env_var>%
```

## 👨‍💼 Yönetme

* 💻 **Bilgisayarım**'a sağ tıklayın
* 🔨 **Özellikler** alanını açın
* 👨‍💻 **Gelişmiş Sistem Seçenekleri** alanından
* 🌃 **Ortam değişkenleri** seçeneğini seçin

## 🌆 Path Düzenleme

* ✨`PATH` Komut isteminde çalışacak kodların hangi dizinleri ele aldığını ifade eder. 
* ⭐ `%APPDATA%\npm`PATH'i var ise, consolda `node` ile başlayan komutlar yazabilirsiniz. 
  * `npm` - Node package Manager
* 📂 Bu işlem sanki yukarıdaki verilen dizinde komut istemini kullanıyormuşsunuz gibi işler.

![](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LrO7YGsAzYl_KF41qg_%2F-Lte9DJM19KmjJXaVl4q%2F-Lte9kA09qqEg2PLJZtk%2Fimage.png?alt=media&token=5627e6bf-103e-403e-be43-3092805628c8)

## 🌟 Sık Kullanılanlar

| 💎 Değişken | 📑 Açıklama |
| :--- | :--- |
| `.` | Bulunan dizin \(working directory\) |
| `..` | Bir üst dizin \(parent directory\) |
| `*` | Tüm dosyalar |
| `**` | Tüm dosya ve dizinler |
| `*.js` | Uzantısı js olan tüm dosyalar |
| `*lib/**/*.js` | Lib içindeki uzantısı js olan tüm dosyalar |
| `%username%` | Kullanıcı adı |
| `%appdata%` | Uygulama verileri dizini |
| `%HOMEDRIVE%` | Kullanıcı diski |
| `%homepath%` | Kullanıcı Yolu |
| `%userprofile%` | Kullanıcı diskiyle yolu |
| `%SystemRoot%` | System dizini \(Örn: `C:\Windows`\) |

## 📋 Hepsi

* [AllUsersProfile](http://environmentvariables.org/AllUsersProfile)
* [AppData](http://environmentvariables.org/AppData)
* [CD](http://environmentvariables.org/CD)
* [ClientName](http://environmentvariables.org/ClientName)
* [CmdCmdLine](http://environmentvariables.org/CmdCmdLine)
* [CmdExtVersion](http://environmentvariables.org/CmdExtVersion)
* [CommonProgramFiles](http://environmentvariables.org/CommonProgramFiles)
* [ComputerName](http://environmentvariables.org/ComputerName)
* [ComSpec](http://environmentvariables.org/ComSpec)
* [Date](http://environmentvariables.org/Date)
* [ErrorLevel](http://environmentvariables.org/ErrorLevel)
* [HomeDrive](http://environmentvariables.org/HomeDrive)
* [HomePath](http://environmentvariables.org/HomePath)
* [LocalAppData](http://environmentvariables.org/LocalAppData)
* [LogonServer](http://environmentvariables.org/LogonServer)
* [Number Of Processors](http://environmentvariables.org/Number_Of_Processors)
* [OS](http://environmentvariables.org/OS)
* [Path](http://environmentvariables.org/Path)
* [PathExt](http://environmentvariables.org/PathExt)
* [Processor Architecture](http://environmentvariables.org/Processor_Architecture)
* [Processor Identifier](http://environmentvariables.org/Processor_Identifier)
* [Processor Level](http://environmentvariables.org/Processor_Level)
* [Processor Revision](http://environmentvariables.org/Processor_Revision)
* [ProgramFiles](http://environmentvariables.org/ProgramFiles)
* [Prompt](http://environmentvariables.org/Prompt)
* [Random](http://environmentvariables.org/Random)
* [SessionName](http://environmentvariables.org/SessionName)
* [SystemDrive](http://environmentvariables.org/SystemDrive)
* [SystemRoot](http://environmentvariables.org/SystemRoot)
* [Temp](http://environmentvariables.org/Temp)
* [Time](http://environmentvariables.org/Time)
* [Tmp](http://environmentvariables.org/Tmp)
* [UserDnsDomain](http://environmentvariables.org/UserDnsDomain)
* [UserDomain](http://environmentvariables.org/UserDomain)
* [UserName](http://environmentvariables.org/UserName)
* [UserProfile](http://environmentvariables.org/UserProfile)
* [WinDir](http://environmentvariables.org/WinDir)

## 🔗 Faydalı Kaynaklar

{% embed url="http://environmentvariables.org/" %}

