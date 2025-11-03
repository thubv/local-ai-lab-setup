#!/bin/bash
# オフラインAI開発ラボ用セットアップスクリプト
# このスクリプトは Homebrew を使用して Ollama と LM Studio をインストールします。
# また Python パッケージやモデルのダウンロードも行います。
set -e

# Homebrewのインストール確認
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew が見つかりません。インストールを開始します。"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Homebrew 更新
brew update

# Ollama のインストール
if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama をインストールします。"
  brew install ollama
fi

# LM Studio のインストール
if [ ! -d "/Applications/LM Studio.app" ]; then
  echo "LM Studio をインストールします。"
  brew install --cask lm-studio
fi

# Ollama サービスを起動します (バックグラウンドサービス)
brew services start ollama || true

# Python パッケージのインストール
if command -v pip3 >/dev/null 2>&1; then
  pip3 install --user ollama
else
  echo "pip3 が見つかりません。Python が正しくインストールされているか確認してください。"
fi

# Qwen モデルのダウンロード
echo "Qwen モデルをダウンロードします。"
ollama pull qwen:1.8b-chat || echo "Ollama サービスが起動していることを確認してください。"

echo "セットアップが完了しました。"
