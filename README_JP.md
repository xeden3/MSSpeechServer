# MSSpeechServer

[English](https://github.com/xeden3/MSSpeechServer/blob/main/README.md) | [中文说明](https://github.com/xeden3/MSSpeechServer/blob/main/README_CN.md) | [日本語説明](https://github.com/xeden3/MSSpeechServer/blob/main/README_JP.md)

## プロジェクトの説明

MSSpeechServerは、Microsoftの音声プラットフォームをベースとしたRESTサーバーで、Windowsにテキスト読み上げ（TTS）機能を提供します。このプロジェクトはLinux x86_64プラットフォームで実行することを目指して設計されており、Dockerイメージをサポートしています。音声ライブラリを読み込み、TTSを生成するための2つの主要なAPIが提供されています。

.NET Coreフレームワークに基づくSAPISpeechServerとは異なり、MSSpeechServerは.NET Framework 4.6環境で実行されます。これは、Microsoft Speech Platformが.NET Coreをサポートしていないためです。

## 対応言語

MSSpeechServerは26種類の言語のテキスト読み上げ（TTS）をサポートしています。以下は対応する言語とそれに対応するパッケージ名です：

| 言語 | パッケージ名                           |
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

## インストールガイド

以下は簡単なインストールガイドです：

1. リポジトリをローカルマシンにクローンします：
   ```
   git clone https://github.com/xeden3/MSSpeechServer.git
   ```
2. プロジェクトディレクトリに移動します：
   ```
   cd MSSpeechServer
   ```
3. Dockerイメージをビルドします：
   ```
   docker build -t msspeechserver .
   ```
4. Dockerコンテナを実行します：
   ```
   docker run --rm -it -p 8080:8080 msspeechserver
   ```
   これにより、 `Ctrl+C` を押すとコンテナが終了し削除されます。

   また、バックグラウンドでコンテナを実行するには、 `-d` フラグを使用できます：
   ```
   docker run -d -p 8080:8080 msspeechserver
   ```
これは基本的なインストールガイドであり、状

況に応じて調整する必要があるかもしれません。

## 使用方法

MSSpeechServerには、次の2つの主要なAPIがあります：

- `http://localhost:8080/GetVoices`：利用可能な音声ライブラリを取得するためのもの。
- `http://localhost:8080/SetTTS`：TTSを生成するためのもの。

これらのAPIを使用するには、HTTPリクエストを送信します。

### `/GetVoices` エンドポイントの使用

`/GetVoices` エンドポイントは、MSSpeechServerがサポートする利用可能な音声ライブラリを取得するために使用されます。音声名（**voiceName**）とそれらの言語コードのセットを返します。

#### サンプルレスポンス：

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

### `/SetTTS` エンドポイントの使用

`/SetTTS` エンドポイントは、テキスト読み上げ（TTS）オーディオを生成するために使用されます。以下のパラメーターを受け取ります：

- `text`（必須）：音声に変換するテキスト。
- `voiceName`（オプション）：TTSに使用する音声パッケージの名前。指定しない場合はデフォルトの音声が使用されます。

#### サンプルの使用法：

1. **デフォルトの音声（英語）を使用する場合：**

   ```
   GET /SetTTS?text=hello world
   ```

   このリクエストは、デフォルトの英語音声を使用して生成されたオーディオファイルを返します。

2. **特定の音声パッケージを使用する場合（中国語）：**

   ```
   GET /SetTTS?text=中文&voiceName=Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)
   ```

   このリクエストは、指定された中国語音声パッケージ、「Microsoft Server Speech Text to Speech Voice (zh-CN, HuiHui)」を使用して生成されたオーディオファイルを返します。

**注意：** 英語以外のTTSを使用する場合は、適切な音声パッケージを選択してください。

## 主な課題と解決策

MSSpeechServerを開発する際に、いくつかの主な課題に直面し、成功裏に解決しました：

1. **フレームワークの互換性**：Microsoft Speech Platformは.NET Coreフレームワークをサポートしていないため、SAPIとは異なり、.NET Framework 4.6環境でMicrosoft Speech Platformを実行する必要があります。これは、SAPISpeechServerとの重要な違いです。

2. **HTTPサーバーの実装**：.NET Framework 4.6環境でHTTPサーバーサービスを実装する際に、Microsoftの組み込みの`HttpListener`ライブラリがWine環境で一定量のバイト数を超えるコンテンツを出力すると失敗することがわかりました。データパケットのキャプチャでは、FINフラグの出現が観察され、これはWineのメカニズムと関連している可能性があります（それにはさまざまな互換性の問題がまだ存在します）。そのため、よりローカルな`SimpleHttpServer`ライブラリを使用することにしました。このライブラリは`System.Net.Sockets`のみを使用し、互換性の問題を引き起こしません。

## ライセンス

このプロジェクトはMITライセンスの下でライセンスされています。詳細については、LICENSEファイルを参照してください。

このREADME.mdファイルがお役に立ちましたら幸いです！質問や追加のサポートが必要な場合はいつでもお知らせください。プロジェクトが順調に進むことをお祈りしています！

これが日本語のREADMEの内容です。
