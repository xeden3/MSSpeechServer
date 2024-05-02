# MSSpeechServer

[English](https://github.com/xeden3/MSSpeechServer/blob/main/README.md) | [中文说明](https://github.com/xeden3/MSSpeechServer/blob/main/README_CN.md) | [日本語説明](https://github.com/xeden3/MSSpeechServer/blob/main/README_JP.md)

## 项目描述

MSSpeechServer是基于微软语音平台的REST服务器，为Windows提供文本转语音（TTS）功能。该项目设计用于在Linux x86_64平台上运行，并支持Docker镜像。它提供了两个主要的API用于读取语音库和生成TTS。

与基于.NET Core框架的SAPISpeechServer不同，MSSpeechServer在.NET Framework 4.6环境下运行，因为微软语音平台不支持.NET Core。

## 语言支持

MSSpeechServer支持26种语言的文本转语音（TTS）。以下是支持的语言及其对应的包名称：

| 语言 | 包名称                           |
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

## 安装指南

这是一个简单的安装指南：

1. 将仓库克隆到本地计算机：
   ```
   git clone https://github.com/xeden3/MSSpeechServer.git
   ```
2. 切换到项目目录：
   ```
   cd MSSpeechServer
   ```
3. 构建Docker镜像：
   ```
   docker build -t msspeechserver .
   ```
4. 运行Docker容器：
   ```
   docker run --rm -it -p 8080:8080 msspeechserver
   ```
   此时按下 `Ctrl+C` 将关闭并删除容器。

   此外，要在后台运行容器，可以使用 `-d` 标志：
   ```
   docker run -d -p 8080:8080 msspeechserver
   ```
请注意，这只是一个基本的安装指南，您可能需要根据您的具体情况进行调整。

## 使用说明

MSSpeechServer提供了两个主要的API：

- `http://localhost:8080/GetVoices`：用于读取可用的语音库。
- `http://localhost:8080/SetTTS`：用于生成TTS。

您可以通过发送HTTP请求来使用这些API。

### 使用 `/GetVoices` Endpoint

`/GetVoices` 端点用于检索MSSpeechServer支持的可用语音库。它返回一组语音名称（**voiceName**）以及它们的语言代码。

#### 示例响应：

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

### 使用 `/SetTTS` Endpoint

`/SetTTS` 端点用于生成文本转语音（TTS）音频。它接受以下参数：

- `text`（必填）：要转换为语音的文本。
- `voiceName`（可选）：用于TTS的语音包的名称。如果未提供，则使用默认语音。

#### 示例用法：

1. **使用默认语音（英语）：**

   ```
   GET /SetTTS?text=hello world
   ```

   此请求将返回使用默认英语语音生成的音频文件。

2. **使用特定语音包（中文）：**

  

 ```
   GET /SetTTS?text=中文&voiceName=Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)
   ```

   此请求将返回使用指定的中文语音包生成的音频文件，即“Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)”。

**注意：** 使用非英语TTS时，请确保选择正确的语音包。

## 主要挑战和解决方案

在开发MSSpeechServer时，遇到了一些主要挑战，并成功解决了：

1. **框架兼容性**：微软语音平台不支持.NET Core框架，与SAPI不同。因此，必须在.NET Framework 4.6环境中运行微软语音平台。这是与SAPISpeechServer的一个关键区别。

2. **HTTP服务器实现**：在基于.NET Framework 4.6环境实现HTTP服务器服务时，发现了微软的内置`HttpListener`库在Wine环境中输出超过一定字节数的内容时会失败。数据包捕获显示了数据包之间的FIN标志的出现，这可能与Wine的机制有关（其仍然存在各种兼容性问题）。因此，选择了更本地的`SimpleHttpServer`库进行实现。该库仅使用`System.Net.Sockets`，不会产生兼容性问题。

## 许可证

此项目根据MIT许可证获得许可。有关更多详细信息，请参阅LICENSE文件。

希望这个README.md文件对您有所帮助！如果您有任何问题或需要进一步的帮助，请随时告诉我。祝您的项目顺利！
