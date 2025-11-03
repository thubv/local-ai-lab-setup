#!/bin/bash
# ワンクリックインストーラー: setup.sh を実行してローカル AI 環境を構築します。
# このファイルをダブルクリックするだけでセットアップが始まります。

# setup.sh に実行権限を付与します
chmod +x "$(dirname "$0")/setup.sh"

# setup.sh を実行します
bash "$(dirname "$0")/setup.sh"
