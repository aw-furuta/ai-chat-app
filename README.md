# chat-app

## 事前作業

## 必要ソフトウェアのインストール

- [Visual Studio Code](https://code.visualstudio.com/download)  
  - [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja) ※拡張機能
  - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) ※拡張機能
- [Docker Desktop](https://www.docker.com/ja-jp/get-started/)


## WSLの設定 ※Windowsの場合のみ

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

## 開発手順

1. Docker Desktopを起動

2. 本リポジトリを`git clone`、またzipでダウンロードして任意のディレクトリに展開

3. VSCodeを起動し2で展開したフォルダを開く

4. `Ctrl + Shift + p` でコマンドパレットを開き、`Dev Containers: Reopen in Container` を実行

   ※VSCodeの右下に下記ポップアップが表示された場合「コンテナーで再度開く」を選択すれば上記と同様の操作となる

   <img src="https://github.com/user-attachments/assets/8e5f4d9e-5d4a-40de-b6e2-82cfe889adff" width="70%" />


5. コンテナが作成され、ターミナルに下記表示が出れば成功

   <img src="https://github.com/user-attachments/assets/76083ead-0c5f-43bb-93e8-149a157e6312" width="100%" />

6. ターミナルで下記コマンドを実行

   ```zsh
   npm run dev
   ```

   <img src="https://github.com/user-attachments/assets/91f2b8d6-4935-4950-94f1-fb0ebc3e19af" width="70%" />

   上記状態になればOK。

7. ブラウザで[http://localhost:3000](http://localhost:3000)にアクセスし、チャットアプリの画面が表示されることを確認

   <img src="https://github.com/user-attachments/assets/2995f521-c9fb-410b-8ea4-6f30c90c3197" width="70%" />
