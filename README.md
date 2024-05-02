# MSSpeechServer

[中文说明](https://github.com/xeden3/MSSpeechServer/README_CN.md) | [日本語説明](https://github.com/xeden3/MSSpeechServer/README_JP.md)

## Project Description

MSSpeechServer is a REST server based on the Microsoft Speech Platform that provides text-to-speech (TTS) functionality for Windows. This project is designed to run on the Linux x86_64 platform and supports Docker images. It provides two main APIs for reading voice libraries and generating TTS.

Unlike the SAPISpeechServer, which is based on the .NET Core framework, the MSSpeechServer operates on the .NET Framework 4.6 environment due to the Microsoft Speech Platform's lack of support for .NET Core.

## Language support

MSSpeechServer supports text-to-speech (TTS) for 26 languages. Here are the supported languages along with their respective package names:

| Language | Package Name                           |
|----------|--------------------------------|
| 中文(中国) (zh-CN)    | MSSpeech_TTS_zh-CN_HuiHui.msi  |
| 中文(台灣) (zh-TW)    | MSSpeech_TTS_zh-TW_HanHan.msi  |
| 中文(香港) (zh-HK)    | MSSpeech_TTS_zh-HK_HunYee.msi  |
| 한국어 (ko-KR)    | MSSpeech_TTS_ko-KR_Heami.msi  |
| 日本語 (ja-JP)    | MSSpeech_TTS_ja-JP_Haruka.msi  |
| Dansk (da-DK)    | MSSpeech_TTS_da-DK_Helle.msi   |
| Català (ca-ES)   | MSSpeech_TTS_ca-ES_Herena.msi |
| Deutsch (de-DE)    | MSSpeech_TTS_de-DE_Hedda.msi   |
| Nederlands (nl-NL)    | MSSpeech_TTS_nl-NL_Hanna.msi   |
| Norsk bokmål (nb-NO)    | MSSpeech_TTS_nb-NO_Hulda.msi  |
| Polski (pl-PL)    | MSSpeech_TTS_pl-PL_Paulina.msi|
| Português (Brasil) (pt-BR)    | MSSpeech_TTS_pt-BR_Heloisa.msi|
| Português (Portugal) (pt-PT)    | MSSpeech_TTS_pt-PT_Helia.msi  |
| Português (Portugal) (pt-PT)    | MSSpeech_TTS_pt-PT_Helia16k.msi|
| Русский (ru-RU)    | MSSpeech_TTS_ru-RU_Elena.msi  |
| Italiano (it-IT)   |	MSSpeech_TTS_it-IT_Lucia.msi |
| Suomi (fi-FI)    | MSSpeech_TTS_fi-FI_Heidi.msi  |
| Svenska (sv-SE)    | MSSpeech_TTS_sv-SE_Hedvig.msi  |
| Español (España) (es-ES)    | MSSpeech_TTS_es-ES_Helena.msi |
| Español (México) (es-MX)    | MSSpeech_TTS_es-MX_Hilda.msi  |
| Français (Canada) (fr-CA)    | MSSpeech_TTS_fr-CA_Harmonie.msi|
| Français (France) (fr-FR)    | MSSpeech_TTS_fr-FR_Hortense.msi|
| English (Australia) (en-AU)    | MSSpeech_TTS_en-AU_Hayley.msi |
| English (Canada) (en-CA)    | MSSpeech_TTS_en-CA_Heather.msi|
| English (United Kingdom) (en-GB)    | MSSpeech_TTS_en-GB_Hazel.msi  |
| English (India) (en-IN)    | MSSpeech_TTS_en-IN_Heera.msi  |
| English (United States) (en-US)    | MSSpeech_TTS_en-US_Helen.msi  |
| English (United States) (en-US)    | MSSpeech_TTS_en-US_ZiraPro.msi|

## Installation Guide

Here is a simple installation guide:

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/xeden3/MSSpeechServer.git
   ```
2. Navigate to the project directory:
   ```
   cd MSSpeechServer
   ```
3. Build the Docker image:
   ```
   docker build -t msspeechserver .
   ```
4. Run the Docker container:
   ```
   docker run --rm -it -p 8080:8080 msspeechserver
   ```
   Pressing `Ctrl+C` will close and remove the container at this point.

   Additionally, to run the container in the background, you can use the -d flag:
   ```
   docker run -d -p 8080:8080 msspeechserver
   ```
Please note that this is a basic installation guide, and you may need to adjust it according to your specific situation.

## Usage Instructions

MSSpeechServer provides two main APIs:

- `http://localhost:8080/GetVoices`: This API is used to read the available voice libraries.
- `http://localhost:8080/SetTTS`: This API is used to generate TTS.

You can use these APIs by sending HTTP requests.

### Using `/GetVoices` Endpoint

The `/GetVoices` endpoint is used to retrieve the available voice libraries supported by MSSpeechServer. It returns a list of voice names (**voiceName**) along with their language codes.

#### Example Response:

```json
{
    "errcode": 0,
    "errmsg": "",
    "rtval": [
        "Microsoft Server Speech Text to Speech Voice (en-US, ZiraPro)",
        "Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)",
        "Microsoft Server Speech Text to Speech Voice (zh-HK, HunYee)"
    ]
}
```

### Using `/SetTTS` Endpoint

The `/SetTTS` endpoint is used to generate text-to-speech (TTS) audio. It accepts the following parameters:

- `text` (required): The text to be converted to speech.
- `voiceName` (optional): The name of the voice package to be used for TTS. If not provided, the default voice will be used.

#### Example Usage:

1. **Using Default Voice (English):**

   ```
   GET /SetTTS?text=hello world
   ```

   This request will return an audio file with speech generated using the default English voice.

2. **Using Specific Voice Package (Chinese):**

   ```
   GET /SetTTS?text=中文&voiceName=Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)
   ```

   This request will return an audio file with speech generated using the specified Chinese voice package, "Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)".

**Note:** When using non-English TTS, ensure to select the appropriate voice package.

## Key Challenges and Solutions

During the development of the MSSpeechServer, a couple of key challenges were encountered and successfully addressed:

1. **Framework Compatibility**: The Microsoft Speech Platform does not support the .NET Core framework, unlike SAPI. Therefore, the Microsoft Speech Platform had to be run in the .NET Framework 4.6 environment. This is a key difference from the SAPISpeechServer.

2. **HTTP Server Implementation**: When implementing the HTTP server service based on the .NET Framework 4.6 environment, it was found that the built-in `HttpListener` library from Microsoft, which calls the HTTP library in the .NET Framework 4.6 environment, would fail when outputting content exceeding a certain number of bytes in the Wine environment. Packet capture revealed occurrences of FIN flags between packets, which might be related to the mechanism of Wine (which still has various compatibility issues). Therefore, the more native `SimpleHttpServer` library was chosen for implementation. This library only uses `System.Net.Sockets` and does not produce compatibility issues.

## License

This project is licensed under the MIT License. For more details, please see the LICENSE file.

I hope this README.md file is helpful to you! If you have any questions or need further assistance, feel free to let me know. Good luck with your project!
