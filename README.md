# VSCode向けC言語プロジェクトテンプレート

## セットアップ

```
$ sudo apt install build-essential cmake libgtest-dev
```

## フォルダー構成

```
.
├─ lib  
│    ├─ src  
│    │    ├─ sample.c  
│    │    └─ sample.h  
│    └─ test  
│          └─ sample_test.cpp  
└─ src  
    └─ main.c  
```

| フォルダー名 | 内容                                         |
| ------------ | -------------------------------------------- |
| src          | アプリケーションの main 関数                 |
| lib/src      | 機能 (関数) を配置するフォルダー             |
| lib/test     | 機能 (関数) の単体テストを配置するフォルダー |

## ビルド

Ctrl + Shift + B キー押下

## 実行

F5 キー押下 (初期状態は単体テスト実行)
