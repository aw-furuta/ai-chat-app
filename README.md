# chat-app

## はじめに

以下に2通りの環境構築パターンを記載します。  
お好きな手順で構築〜実行までを行ってください。

### ① Node.jsをインストールして動作させる場合

こんな人におすすめ💡

- 既にNode.jsをインストールしている人(version 18.0以上)
- Dockerをインストールしたくない人(使いたくない人)
- ローカルに直接環境を構築することに抵抗がない人


### ② Dockerを使ってコンテナ上で動作させたい場合

こんな人におすすめ💡

- ローカルの環境を汚したくない人  
- 既にDocker Destopをインストール済みの人
- PCがMacの人（Windowsより設定が楽なので）


## パターン①：環境構築

### 必要ソフトウェアのインストール

- [Visual Studio Code](https://code.visualstudio.com/download)
  - [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja) ※拡張機能(英語でも良い人は不要)
- [Node.js](https://nodejs.org/ja) ※18.0以上をインストールすること

### アプリ実行準備

1. 本リポジトリを`git clone`、またzipでダウンロードして任意のディレクトリに展開

2. 1で展開したフォルダ内の`src`フォルダをVSCodeで開く

3. ターミナルを開き、下記コマンドを実行

   ```zsh
   npm install
   ```

   ※展開したフォルダをそのまま開いてしまった場合は`cd src`でカレントディレクトリを移動してください

アプリの起動については「[共通：アプリの起動](https://github.com/aw-furuta/ai-chat-app#%E5%85%B1%E9%80%9A%E3%82%A2%E3%83%97%E3%83%AA%E3%81%AE%E8%B5%B7%E5%8B%95)」参照

## パターン②：環境構築

### 必要ソフトウェアのインストール

- [Visual Studio Code](https://code.visualstudio.com/download)
  - [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja) ※拡張機能(英語でも良い人は不要)
  - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) ※拡張機能
- [Docker Desktop](https://www.docker.com/ja-jp/get-started/)


### WSLの設定 ※Windowsの場合のみ

1. 「コントロールパネル」 >「プログラム」 >「Windowsの機能の有効化または無効化」にて下記を有効化

- Hyper-V
- Linux 用 Windows サブシステム
- 仮想マシンプラットフォーム

  すでに有効になっている場合は何もしなくてOK。

2. powershellを管理者権限で起動

3. Ubuntuインストール

   ```bash
   wsl --install Ubuntu-22.04
   ```

3. 上記でインストールしたUbuntuを既定として設定

   ```bash
   wsl --set-default Ubuntu-22.04
   ```

4. 設定確認

   ```bash
   wsl --status
   ```

   既定のディストリビューションが表示されたらOK

### コンテナの作成

1. Docker Desktopを起動

2. 本リポジトリを`git clone`、またzipでダウンロードして任意のディレクトリに展開

3. VSCodeを起動し2で展開したフォルダを開く

4. `Ctrl + Shift + p` でコマンドパレットを開き、`Dev Containers: Reopen in Container` を実行

   ※VSCodeの右下に下記ポップアップが表示された場合「コンテナーで再度開く」を選択すれば上記と同様の操作となる

   <img src="https://github.com/user-attachments/assets/8e5f4d9e-5d4a-40de-b6e2-82cfe889adff" width="70%" />


5. コンテナが作成され、ターミナルに下記表示が出れば成功

   <img src="https://github.com/user-attachments/assets/76083ead-0c5f-43bb-93e8-149a157e6312" width="100%" />

アプリの起動については「[共通：アプリの起動](https://github.com/aw-furuta/ai-chat-app#%E5%85%B1%E9%80%9A%E3%82%A2%E3%83%97%E3%83%AA%E3%81%AE%E8%B5%B7%E5%8B%95)」参照

## 共通：アプリの起動

1. VSCodeのターミナルで下記コマンドを実行

   ```zsh
   npm run dev
   ```

   <img src="https://github.com/user-attachments/assets/91f2b8d6-4935-4950-94f1-fb0ebc3e19af" width="70%" />

   上記状態になればOK。

2. ブラウザで[http://localhost:3000](http://localhost:3000)にアクセスし、チャットアプリの画面が表示されることを確認

   <img src="https://github.com/user-attachments/assets/2995f521-c9fb-410b-8ea4-6f30c90c3197" width="70%" />  

　
<nbsp>  
**※上記のままではまだチャットはできない状態なので最後にAPIキーの設定を行います**  

3. `.env.local`ファイルを`/src`直下に作成し、必要な環境変数を設定

   ```plaintext
   # .env.local
   GOOGLE_GENERATIVE_AI_API_KEY=***ここにAPIキーを指定***
   GOOGLE_GENERATIVE_AI_MODEL=gemini-1.5-flash-002
   ```

   Gemini APIキーの取得は[こちら](https://aistudio.google.com/app/apikey)から。  
   
   上記設定を行うことでチャットができるようになります。