# statsコマンド - 数値解析ツール

## 概要
`statsコマンド`は、標準入力から数値データを受け取り、その合計、平均、中央値、最大値、最小値、および要素数を計算して出力します。

[![test](https://github.com/kiyomaki/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/kiyomaki/robosys2023/actions/workflows/test.yml)

## 機能
- 標準入力から数値を読み取り、float型で統計情報を計算。
- 合計、平均、中央値、最大値、最小値、数の計算機能。

## 動作環境・使用ソフトウェア
- Pythonで実装されており、以下の環境で動作確認済み。
  - Ubuntu 22.04
  - Python 3.8.10
 
## インストール
```
$ git clone git@github.com:kiyomaki/robosys2023.git
$ cd robosys2023/
```

## 使用方法
コマンドラインから以下のコマンドを実行してプログラムを使用します。

- 直接数値を入力する場合：
  ```
  echo -e "1\n2\n3\n4\n5" | ./stats
  ```
  実行結果
  ```
  合計: 15.0
  平均: 3.0
  中央値: 3.0
  最大値: 5.0
  最小値: 1.0
  数: 5
  ```
- ファイルから数値を読み込む場合（`nums`ファイルには「10.5 20.4 30.3 40.2 50.1」が含まれている）
  ```
  ./stats < nums
  ```
  実行結果
  ```
  合計: 151.5
  平均: 30.3
  中央値: 30.3
  最大値: 50.1
  最小値: 10.5
  数: 5
  ```
## ライセンス・著作権
- このソフトウェアは3条項BSDライセンスの下で再頒布および使用が許可されています。
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）内のlesson3の`plus_stdinコマンド`を改良し、`statsコマンド`として本人の許可を得て自身の著作としたものです．
   - https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022
- © 2023 Makishi Kiyosawa

