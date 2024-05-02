Balabolka (Konsolenanwendung), Version 1.45
Copyright (c) 2013-2018 Ilya Morozov
Alle Rechte vorbehalten

WWW: http://balabolka.site/de/bconsole.htm
E-mail: crossa@list.ru (nur russisch oder englisch)

Lizenzart: Freeware
Plattformen: Microsoft Windows XP/Vista/7/8/10
Microsoft Speech API: 4.0/5.0 und höher
Microsoft Speech Platform: 11.0



*** Anwendung ***

balcon [Optionen ...]


*** Befehlszeilen-Optionen ***

-l
   Druckt die Liste der verfügbaren Stimmen.

-g
   Druckt die Liste der verfügbaren Audio-Ausgabegeräte.

-f <Dateiname>
   Bestimmt den Namen der Eingabe-Textdatei.

-w <Dateiname>
   Bestimmt den Namen der Ausgabe-Datei im WAV-Format. Wenn diese Option angegeben ist, wird eine Audio-Datei erstellt. Sonst wird der Text laut vorgelesen.

-n <Sprecher>
   Bestimmt den Namen des Sprechers (ein Teil des Namens ist ausreichend). 
   Wenn diese Option nicht festgelegt wurde, wird die Stimme, die durch die Option [-id] bestimmt wurde, oder die Standard-Stimme von Windows verwendet.

-id <Zahl>
   Setzt die "Lokale ID" für die Stimme. Die Lokale ID ist der von Microsoft zugewiesene Sprachen-Code
   (z. B. "1031" oder "0x0407" für "Deutsch - Deutschland", "1033" oder "0x0409" für "Englisch - Amerika").
   Das Programm wird die erste Stimme mit definierter Lokaler ID aus der Liste von Stimmen auswählen. 
   Wenn diese Option nicht festgelegt wurde, wird die Stimme, die durch die Option [-n] bestimmt wurde, oder die Standard-Stimme von Windows verwendet.
   Liste der Sprachen mit zugewiesenen Codes: https://msdn.microsoft.com/en-us/library/cc233982.aspx

-m
   Druckt die Parameter der Stimme.

-b <Zahl>
   Wählt das Audio-Ausgabegerät nach seinem Index. Der Index des Standard-Audio-Ausgabegerätes ist 0.

-r <Textzeile>
   Wählt das Audio-Ausgabegerät nach seinem Namen.

-c
   Verwendet die Texteingabe aus der Zwischenablage.

-t <Textzeile>
   Die Texteingabe kann von der Befehlszeile verwendet werden.

-i
   Verwendet die Texteingabe von STDIN.

-o
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Schreibt Tondaten auf STDOUT. Wenn diese Option gewählt ist, wird die Option [-w] ignoriert.

-s <Zahl>
   SAPI 4: Bestimmt die Geschwindigkeit in einem Bereich von 0 bis 100 (kein Standardwert).
   SAPI 5 und Microsoft Speech Platform: Bestimmt die Geschwindigkeit in einem Bereich von -10 bis 10 (der Standardwert ist 0).

-p <Zahl>
   SAPI 4: Bestimmt die Tonhöhe in einem Bereich von 0 bis 100 (kein Standardwert).
   SAPI 5 und Microsoft Speech Platform: Bestimmt die Tonhöhe in einem Bereich von -10 bis 10 (der Standardwert ist 0).

-v <Zahl>
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Bestimmt das Volumen in einem Bereich von 0 bis 100 (der Standardwert ist 100).

-e <Zahl>
   Bestimmt die Länge der Pausen zwischen den Sätzen (in Millisekunden). Der Standardwert ist 0.

-a <Zahl>
   Bestimmt die Länge der Pausen zwischen den Absätzen (in Millisekunden). Der Standardwert ist 0.

-d <Dateiname>
   Verwendet das Wörterbuch für die Aussprache-Korrektur (*.BXD, *.DIC oder *.REX). Die Befehlszeile kann ein paar Optionen enthalten [-d].

-k
   Beendet weitere Exemplare der Konsolen-Anwendung im Arbeitsspeicher des Computers.

-ka
   Beendet das aktive Exemplar der Konsolen-Anwendung im Arbeitsspeicher des Computers.

-q
   Setzt die Anwendung in eine Warteschlange. Die Konsolen-Anwendung wartet, bis andere Exemplare des Programms fertig sind.

-lrc
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Erstellt eine LRC-Datei, wenn die Option [-w] oder [-o] angegeben ist.

-srt
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Erstellt eine SRT-Datei, wenn die Option [-w] oder [-o] angegeben ist.

-vs <Dateiname>
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Bestimmt den Namen der ausgegebenen Textdatei mit Visemen, wenn die Option [-w] angegeben ist.
   Ein Visem ist die Mundform, die einem bestimmten Sprachklang entspricht. SAPI unterstützt die Liste von 21 Visemen.
   Diese Liste basiert auf den originalen Disney Visemen. Die Anwendung erstellt die Audiodatei und liest sie dann laut, um Viseme und ihre Timecodes zu erhalten.
   Die Liste der von SAPI 5 unterstützten Viseme: https://msdn.microsoft.com/en-us/library/ms720881(v=vs.85).aspx

-sub
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Text wird als Untertitel verarbeitet. Diese Option kann nützlich sein, wenn die Optionen [-i] oder [-c] festgelegt wurden.

-tray
   Das Programm-Icon im System-Tray anzeigen. Dies ermöglicht es, den Fortschritt der Aufgabe zu sehen.
   Mit der Option "Stopp" im Kontext-Menü kann man den Prozess stoppen.

-ln <Zahl>
   Wählt eine Zeile aus einer Textdatei mit Hilfe einer Zeilennummer. Die Zeilennummerierung beginnt bei "1".
   Ein Intervall von Zahlen kann verwendet werden, um mehr als eine Zeile auszuwählen (beispielsweise "26-34").
   Die Befehlszeile kann ein paar Optionen enthalten [-ln].

-fr <Zahl>
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: sets the output audio sampling frequency in kHz (8, 11, 12, 16, 22, 24, 32, 44, 48).
   If the option is not specified, the default value of the selected voice will be used.

-bt <Zahl>
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: sets the output audio bit depth (8 oder 16).
   If the option is not specified, the default value of the selected voice will be used.

-ch <Zahl>
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: sets the output audio channel mode (1 oder 2).
   If the option is not specified, the default value of the selected voice will be used.

-? oder -h
   Druckt die Liste der verfügbaren Befehlszeilen-Optionen.

--encoding <Kodierung> oder -enc <Kodierung>
   Bestimmt die Kodierung für die Texteingabe ("ansi", "utf8" oder "unicode"). Die Standardeinstellung ist "ansi".

--silence-begin <Zahl> oder -sb <Zahl>
   Legt die Lönge der Stille am Anfang der Audio-Datei fest (in Millisekunden). Der Standardwert ist 0.

--silence-end <Zahl> oder -se <Zahl>
   Legt die Lönge der Stille am Ende der Audio-Datei fest (in Millisekunden). Der Standardwert ist 0.

--lrc-length <Zahl>
   Bestimmt die maximale Länge der Textzeilen für die LRC-Datei (in Zeichen).

--lrc-fname <Dateiname>
   Bestimmt den Namen der LRC-Datei. Die Option kann nützlich sein, wenn die Option [-o] angegeben ist.

--lrc-enc <Kodierung>
   Bestimmt die Kodierung für die LRC-Datei ("ansi", "utf8" oder "unicode"). Die Standardeinstellung ist "ansi".

--lrc-offset <Zahl>
   Bestimmt die Zeitverschiebung für die LRC-Datei (in Millisekunden).

--lrc-artist <Textzeile>
   Bestimmt den ID-Tag für die LRC-Datei: Künstler.

--lrc-album <Textzeile>
   Bestimmt den ID-Tag für die LRC-Datei: Album.

--lrc-title <Textzeile>
   Bestimmt den ID-Tag für die LRC-Datei: Titel.

--lrc-author <Textzeile>
   Bestimmt den ID-Tag für die LRC-Datei: Autor.

--lrc-creator <Textzeile>
   Bestimmt den ID-Tag für die LRC-Datei: Ersteller der LRC-Datei.

--srt-length <Zahl>
   Bestimmt die maximale Länge der Textzeilen für die SRT-Datei (in Zeichen).

--srt-fname <Dateiname>
   Bestimmt den Namen der SRT-Datei. Die Option kann nützlich sein, wenn die Option [-o] angegeben ist.

--srt-enc <Kodierung>
   Bestimmt die Kodierung für die SRT-Datei ("ansi", "utf8" oder "unicode"). Die Standardeinstellung ist "ansi".

--raw
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Der Ausgang ist RAW-Format PCM; die Audiodaten enthalten nicht den WAV-Header.
   Diese Option wird zusammen mit der Option [-o] verwendet.

--ignorelength
   SAPI 4: nicht verwendet.
   SAPI 5 und Microsoft Speech Platform: Ignoriert die Länge der Daten im WAV-Header.
   Diese Option wird zusammen mit der Option [-o] verwendet.

--sub-format <Textzeile>
   Legt das Format der Untertitel fest ("srt", "ssa", "ass" oder "smi"). Wenn diese Option nicht angegeben ist, wird das Format anhand der Dateiendung bestimmt.

--sub-fit oder -sf
   Erhöht die Geschwindigkeit automatisch, passend zu Zeitintervallen (wenn das Programm Untertitel in eine Audio-Datei konvertiert).

--sub-max <Zahl> oder -sm <Zahl>
   Legt die maximale Sprechgeschwindigkeit in einem Bereich von -10 bis 10 fest (wenn das Programm Untertitel in eine Audio-Datei konvertiert).

--deletefile oder -df
   Entfernt die Textdatei, wenn die Aufgabe erledigt ist. Diese Option wird zusammen mit der Option [-f] verwendet.


*** Beispiele ***

balcon -l

balcon -n "Microsoft Anna" -m

balcon -f "d:\Text\book.txt" -w "d:\Sound\book.wav" -n "Emma"

balcon -n "Callie" -c -d "d:\rex\rules.rex" -d "d:\dic\rules.dic"

balcon -n "Matthias" -t "Der Text wird langsam vorgelesen." -s -5 -v 70

balcon -k

balcon -f "d:\Text\book.txt" -w "d:\Sound\book.wav" -lrc --lrc-length 80 --lrc-title "The Lord of the Rings"

balcon -f "d:\Text\film.srt" -w "d:\Sound\film.wav" -n "Laura" --sub-fit --sub-max 2


Beispiel für die Verwendung zusammen mit LAME.EXE:

balcon -f d:\book.txt -n Klaus -o --raw | lame -r -s 22.05 -m m -h - d:\book.mp3


Beispiel für die Verwendung zusammen mit OGGENC2.EXE:

balcon -f d:\book.txt -n Klaus -o --ignorelength | oggenc2 --ignorelength - -o d:\book.ogg


Beispiel für die Verwendung zusammen mit WMAENCODE.EXE:

balcon -f d:\book.txt -n Klaus -o --ignorelength | wmaencode - d:\book.wma --ignorelength


*** Konfigurationsdatei ***

Die Befehlszeilen-Optionen können als Konfigurationsdatei "balcon.cfg" im Ordner der Konsolen-Anwendung gespeichert werden. 

Beispiel für eine Konfigurationsdatei:
===============
-f d:\Text\book.txt
-w d:\Sound\book.wav
-n Microsoft Anna
-s 2
-p -1
-v 95
-e 300
-d d:\Dict\rules.bxd
-lrc
--lrc-length 75
--lrc-enc utf8
--lrc-offset 300
===============

Das Programm kann Optionen von der Konfigurationsdatei und der Kommandozeile kombinieren.


*** Audio-Clips ***

Das Programm ermöglicht, Links zu externen WAV-Dateien (Audio-Clips) in Text von Dokumenten einzufügen. Ein Audio-Clip-Tag wird so aussehen:

{{Audio=C:\Sounds\ring.wav}}

Beim Vorlesen von Text wird Balabolka unterbrochen, wenn das Audio-Clip-Tag erreicht ist, der Audio-Clip wird gespielt und das Vorlesen wird fortgesetzt.
Bei der Umwandlung in Audio-Dateien wird der Audio-Clip in der Audio-Datei, die durch das Programm erstellt wird, eingebettet werden.


*** Lizenzart ***

Sie können Software für nichtkommerzielle Zwecke verwenden und vertreiben. Für die kommerzielle Nutzung oder den Vertrieb benötigen Sie die Genehmigung des Urheberrechtsinhabers.

###