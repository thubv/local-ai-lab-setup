#!/usr/bin/env python3
# モデルを実行するサンプルスクリプト
# このスクリプトはOllamaライブラリを使用してQwenモデルに問い合わせます

import ollama


def main():
    # モデルに渡すメッセージを定義する
    messages = [
        {"role": "system", "content": "あなたは親切なAIアシスタントです。"},
        {"role": "user", "content": "こんにちは！AIにできることを教えてください。"},
    ]
    # Qwenモデルを呼び出す
    response = ollama.chat(model="qwen", messages=messages)
    # 結果を表示する
    print(response['message']['content'])


if __name__ == "__main__":
    main()
