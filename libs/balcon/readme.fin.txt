Balabolka (komentorivisovellus), versio 1.45
Copyright (c) 2013-2018 Ilya Morozov
All Rights Reserved

WWW: http://balabolka.site/fi/bconsole.htm
E-mail: crossa@list.ru

Lisenssi: Freeware
K‰yttˆj‰restelm‰: Microsoft Windows XP/Vista/7/8/10
Microsoft Speech API: v4.0/5.0
Microsoft Speech Platform: v11.0



*** Komentorivi ***

balcon [options ...]


*** Komentoriviparametrit ***

-l
   N‰yt‰ kaikki tietokoneella olevat ‰‰net.

-g
   N‰yt‰ kaikki saatavilla olevat audiolaitteet.

-f <tiedoston_nimi>
   Avaa tekstitiedosto.

-w <tiedoston_nimi>
   Kirjoittaa WAV-‰‰nitiedosto. Jos t‰m‰ parametri on syˆty, luodaan ‰‰nitiedosto. Jos parametria ei ole, teksti‰ luetaan ‰‰neen.

-n <‰‰nen_nimi>
   ƒ‰nen nimi (nimenosa riitt‰‰). Jos t‰t‰ parametria ei ole, k‰ytet‰‰n Windowsin ohjauspaneelilla valittu ‰‰ni.
   If the option is not specified, the voice, defined by the option [-id], or the default voice of Windows will be used.

-id <luku>
   Valita tietokoneen ‰‰ni kielitunnisteen avulla (Locale ID).
   Microsoftin kehitt‰j‰t myˆnsiv‰t sellaiset tunnisteet kaikille kielille (esimerkiksi, "1033" tai "0x0409" on englannin kielen tunniste ja "1035" tai "0x040B" ñ suomen kielen tunniste).
   Ohjelma valitsee listalta ensimm‰isen ‰‰nen, jonka kielitunniste vastaa tarvittavaan koodiin. Jos parametri ei ole annettu, niin k‰ytet‰‰n ‰‰nt‰, joka annettiin [ñn] -parametrin avulla, tai ‰‰nt‰, joka valittiin Windowsin ohjauspaneelista.
   Tunnisteiden lista: https://msdn.microsoft.com/en-us/library/cc233982.aspx

-m
   N‰ytt‰‰ valitun ‰‰nen parametrit.

-b <luku>
   Valitse audiolaite sen numeron mukaan saatavilla olevien laitteiden listasta ‰‰nen esitt‰miseen. Oletuslaitteen numero on 0.

-r <tekstin_rivi>
   Sets the audio output device by its name.

-c
   K‰yt‰ leikepˆyd‰ss‰ oleva teksti.

-t <tekstin_rivi>
   K‰yt‰ komentoriviss‰ oleva teksti.

-i
   K‰yt‰ standardisyˆttˆvirrassa oleva teksti (STDIN).

-o
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: kirjoita ‰‰nitieto standarditulostevirtaan (STDOUT); jos parametri on mainittu, parametri [-w] on v‰litt‰m‰tt‰.

-s <luku>
   SAPI 4: asenna ‰‰ninopeudeksi luku 0...100 (oletusnopeutta ei ole).
   SAPI 5 ja Microsoft Speech Platform: asenna ‰‰ninopeudeksi luku -10...10 (oletusnopeus on 0).

-p <luku>
   SAPI 4: asenna ‰‰nens‰vyksi luku 0...100 (oletuss‰vy‰ ei ole).
   SAPI 5 ja Microsoft Speech Platform: asenna ‰‰nens‰vyksi luku -10...10 (oletuss‰vy on 0).

-v <luku>
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: asenna ‰‰nenvoimakkuudeksi luku 0...100 (oletusvoimakkuus on 100).

-e <luku>
   Asenna lauseiden v‰liseksi taukopituudeksi syˆtetty luku (yksikkˆn‰ on millisekunti). Oletuspituus on 0.

-a <luku>
   Asenna kappaleiden v‰liseksi taukopituudeksi syˆtetty luku (yksikkˆn‰ on millisekunti). Oletuspituus on 0.

-d <tiedoston_nimi>
   K‰yt‰ sanakirja ‰‰nt‰myksen korjaamiseksi (tiedostolaajennus *.BXD, *.DIC tai *.REX). Komentoon voi sis‰lty‰ muutama [-d] -parametri.

-k
   Lopettaa muiden tietokoneella toimivien konsolisovellusten toimintaa.

-ka
   Lopettaa nykyhetkess‰ aktiivisena olevan konsolisovelluksen toimintaa.

-q
   Lis‰t‰ sovellus jonoon. Konsolisovellus odottaa kunnes muut ohjelmat lopettavat toimintaan.

-lrc
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: luoda LRC-muotoinen tiedosto, jos on annettu [ñw] tai [ño] ñparametrit.

-srt
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: luoda SRT-muotoinen tiedosto, jos on annettu [ñw] tai [ño] ñparametrit.

-vs <tiedoston_nimi>
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: sets the name of output text file with visemes, if the option [-w] is specified.
   A viseme is the mouth shape that corresponds to a particular speech sound. SAPI supports the list of 21 visemes.
   This list is based on the original Disney visemes. The application will create the audio file and then read it aloud to get visemes and their timecodes.
   The list of visemes supported by SAPI 5: https://msdn.microsoft.com/en-us/library/ms720881(v=vs.85).aspx

-sub
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: tekstin muotona on tekstitys, joka pit‰‰ muuttaa ‰‰nitiedostoksi ottaen huomioon annetut v‰liajat.

-tray
   N‰ytt‰‰ ohjelman kuvake k‰yttˆj‰rjestelm‰n tiedotusten alueella.
   Se antaa k‰ytt‰j‰lle mahdollisuutta seurata operaation suorittamista, sek‰ lopettaa prosessi pikavalikon "Stop"-kohdan avulla.

-ln <luku>
   Selects a line from the text file by using of a line number. The line numbering starts at "1".
   The interval of numbers can be used for selecting of more than one line (for example, "26-34").
   Komentoon voi sis‰lty‰ muutama [-ln] -parametri.

-fr <luku>
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: sets the output audio sampling frequency in kHz (8, 11, 12, 16, 22, 24, 32, 44, 48).
   If the option is not specified, the default value of the selected voice will be used.

-bt <luku>
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: sets the output audio bit depth (8 tai 16).
   If the option is not specified, the default value of the selected voice will be used.

-ch <luku>
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: sets the output audio channel mode (1 tai 2).
   If the option is not specified, the default value of the selected voice will be used.

-? tai -h
   N‰yt‰ kaikki mahdolliset parametrit.

--encoding <merkistˆ> tai ñenc <merkistˆ>
   Tekstin koodaus tavallisesta syˆttˆvirrasta ("ansi", "utf8" tai "unicode"). Oletuksena parametri on "ansi".

--silence-begin <luku> tai -sb <luku>
   M‰‰ritt‰‰ ‰‰nitiedoston alussa olevan tauon pituus (millisekunneissa). Oletuspituus on 0.

--silence-end <luku> tai -se <luku>
   M‰‰ritt‰‰ ‰‰nitiedoston lopussa olevan tauon pituus (millisekunneissa). Oletuspituus on 0.

--lrc-length <luku>
   M‰‰ritt‰‰ LRC-muotoisen tiedoston maksimaalinen rivin pituus (symboleissa).

--lrc-fname <tiedoston_nimi>
   LRC-muotoisen tiedoston nimi. T‰m‰ parametri voi olla hyˆdyllinen niiss‰ tapauksissa, kun komentoriviss‰ on annettu parametri [ño].

--lrc-enc <merkistˆ>
   LRC-muotoisen tiedoston koodaus ("ansi", "utf8" tai "unicode"). Oletuksena parametri on "ansi".

--lrc-offset <luku>
   Antaa ajansiirto LRC-muotoiselle tiedostolle (millisekunneissa).

--lrc-artist <tekstin_rivi>
   LRC-muotoisen tiedoston tag: teoksen esitt‰j‰.

--lrc-album <tekstin_rivi>
   LRC-muotoisen tiedoston tag: albumi.

--lrc-title <tekstin_rivi>
   LRC-muotoisen tiedoston tag: teoksen nimi.

--lrc-author <tekstin_rivi>
   LRC-muotoisen tiedoston tag: luoja.

--lrc-creator <tekstin_rivi>
   LRC-muotoisen tiedoston tag: tiedoston luoja.

--srt-length <luku>
   M‰‰ritt‰‰ SRT-muotoisen tiedoston maksimaalinen rivin pituus (symboleissa).

--srt-fname <tiedoston_nimi>
   SRT-muotoisen tiedoston nimi. T‰m‰ parametri voi olla hyˆdyllinen niiss‰ tapauksissa, kun komentoriviss‰ on annettu parametri [ño].

--srt-enc <merkistˆ>
   SRT-muotoisen tiedoston koodaus ("ansi", "utf8" tai "unicode"). Oletuksena parametri on "ansi".

--raw
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: tallentaa ‰‰nitiedostot RAW PCM-muotoon; tiedostot eiv‰t sis‰ll‰ WAV-muotoista otsikkoa.
   Parametria k‰ytet‰‰n [ño] -parametrin parissa.

--ignorelength
   SAPI 4: parametria ei k‰ytett‰viss‰.
   SAPI 5 ja Microsoft Speech Platform: ei kirjoita ‰‰nitiedoston kokoa WAV-muotoiseen otsikkoon.
   Parametria k‰ytet‰‰n [ño] -parametrin parissa.

--sub-format <tekstin_rivi>
   Tekstityksen muoto ("srt", "ssa", "ass" tai "smi"). Jos parametri ei ole annettu, niin parametri m‰‰ritet‰‰n tekstityksen tiedostop‰‰tteen mukaan.

--sub-fit tai -sf
   Lis‰t‰ automaattisesti puheen nopeutta pysy‰kseen tekstityksess‰ annettujen v‰liaikojen rajoissa.

--sub-max <luku> tai -sm <luku>
   M‰‰ritt‰‰ maksimaalinen puheen nopeus ‰‰nialueella -10:st‰ 10:een (muuttaakseen tekstitys ‰‰nitiedostoksi).

--deletefile tai -df
   Poistaa tekstitiedosto ‰‰neen lukemisen tai ‰‰nitiedoston tallentamisen j‰lkeen.


*** Esimerkkej‰ ***

balcon -l

balcon -n "Microsoft Anna" -m

balcon -f "d:\Text\book.txt" -w "d:\Sound\book.wav" -n "Emma"

balcon -n "Callie" -c -d "d:\rex\rules.rex" -d "d:\dic\rules.dic"

balcon -n "Sanna" -t "Teksi luetaan hitaasti." -s -5 -v 70

balcon -k

balcon -f "d:\Text\book.txt" -w "d:\Sound\book.wav" -lrc --lrc-length 80 --lrc-title "The Lord of the Rings"

balcon -f "d:\Text\film.srt" -w "d:\Sound\film.wav" -n "Laura" --sub-fit --sub-max 2


Esimerkki sovelluksen k‰ytt‰mist‰ LAME.EXE ñapuohjelman parissa:

balcon -f d:\book.txt -n Sanna -o --raw | lame -r -s 22.05 -m m -h - d:\book.mp3


Esimerkki sovelluksen k‰ytt‰mist‰ OGGENC2.EXE ñapuohjelman parissa:

balcon -f d:\book.txt -n Sanna -o --ignorelength | oggenc2 --ignorelength - -o d:\book.ogg


Esimerkki sovelluksen k‰ytt‰mist‰ WMAENCODE.EXE ñapuohjelman parissa:

balcon -f d:\book.txt -n Sanna -o --ignorelength | wmaencode - d:\book.wma --ignorelength


*** Konfiguraatiotiedosto ***

Parametrit voi tallentaa "balcon.cfg" -nimiseen konfiguraatiotiedostoon, joka sijaitsee sovelluksen kansiossa.

Tiedoston sis‰llyksen esimerkki:
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

Sovellus voi yhdist‰‰ konfiguraatiotiedostossa olevat ja komentorivin parametrit.


*** Audio Clips ***

The application allows to insert links to external WAV files (audio clips) into text. Audio clip tag will look like:

{{Audio=C:\Sounds\ring.wav}}

When speaking text aloud, the program will pause when the audio clip tag is reached, play the audio clip and resume speaking.
When converting to audio files, the audio clip will be embedded in the audio file created by the application.


*** Lisenssi ***

Sovelluksen kaupallinen k‰yttˆoikeus:
- toiminimelle rajoituksetta;
- oikeushenkilˆit‰ koskevat rajoitukset on mainittu Balabolkan lisenssisopimuksessa.

Sovelluksen kaupallinen k‰yttˆ sallittu ainoastaan oikeudenomistajan luvasta.

###