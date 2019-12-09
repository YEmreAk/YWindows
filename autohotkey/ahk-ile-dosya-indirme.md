# ⏬ AHK ile Dosya İndirme

## ⭐ Örnek Kullanımlar

### 👶 Basit Kullanım

```bash
; Temel Dosya indirme
DownloadFile(
    "https://github.com/yedhrab/YHotkeys/raw/master/src/YHotkeys.exe",
    "YHotkeys.exe"
)
```

### 👮‍♂️ Dosyanın Üzerine Yazma

```php
Url = http://ahkscript.org/download/ahk-install.exe
DownloadAs = AutoHotkey_L Installer.exe
Overwrite := False
UseProgressBar := True
DownloadFile(Url, DownloadAs, Overwrite, UseProgressBar)
```

### 🗂️ Nereye İneceğini Seçme

```bash
FileSelectFile, SaveAs, S, ccsetup410.exe
DownloadFile("http://download.piriform.com/ccsetup410.exe", SaveAs, True, True)
```

## 👨‍💻 Dosya İndirme Scripti

```php
DownloadFile(UrlToFile, SaveFileAs, Overwrite := True, UseProgressBar := True, ExpectedFileSize := 0) {
    ;Check if the file already exists and if we must not overwrite it
    If (!Overwrite && FileExist(SaveFileAs))
        Return
    ;Check if the user wants a progressbar
    If (UseProgressBar) {
        ;Initialize the WinHttpRequest Object
        WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        ;Download the headers
        WebRequest.Open("HEAD", UrlToFile)
        WebRequest.Send()

        try {
            ;Store the header which holds the file size in a variable:
            FinalSize := WebRequest.GetResponseHeader("Content-Length")
        } catch e {
            ; Cannot get "Content-Length" header
            FinalSize := ExpectedFileSize
        }

        ;Create the progressbar and the timer
        Progress, , , Downloading..., %UrlToFile%

        LastSizeTick := 0
        LastSize := 0

        ; Enable progress bar updating if the system knows file size
        SetTimer, __UpdateProgressBar, 1500
    }

    ;Download the file
    UrlDownloadToFile, %UrlToFile%, %SaveFileAs%
    ;Remove the timer and the progressbar because the download has finished
    If (UseProgressBar) {
        Progress, Off
        SetTimer, __UpdateProgressBar, Off
    }
    Return

    ;The label that updates the progressbar
    __UpdateProgressBar:
        ;Get the current filesize and tick
        CurrentSize := FileOpen(SaveFileAs, "r").Length ;FileGetSize wouldn't return reliable results
        CurrentSizeTick := A_TickCount

        ;Calculate the downloadspeed
        SpeedOrig  := Round((CurrentSize/1024-LastSize/1024)/((CurrentSizeTick-LastSizeTick)/1000))

        SpeedUnit  := "KB/s"
        Speed      := SpeedOrig

        if (Speed > 1024) {
            ; Convert to megabytes
            SpeedUnit := "MB/s"
            Speed := Round(Speed/1024, 2)
        }

        SpeedText := Speed . " " . SpeedUnit

        ;Save the current filesize and tick for the next time
        LastSizeTick := CurrentSizeTick
        LastSize := FileOpen(SaveFileAs, "r").Length

        if FinalSize = 0
        {
            PercentDone := 50
        } else {
            ;Calculate percent done
            PercentDone := Round(CurrentSize/FinalSize*100)
            SpeedText := SpeedText . ", " . Round((FinalSize - CurrentSize) / SpeedOrig / 1024) . "s left"
        }

        ;Update the ProgressBar
        Progress, %PercentDone%, %PercentDone%`% (%SpeedText%), Downloading..., Downloading %SaveFileAs% (%PercentDone%`%)
    Return
}
```

## 🔗 Faydalı Bağlantılar

{% embed url="https://stackoverflow.com/a/29459478/9770490" %}

