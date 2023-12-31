#!/usr/bin/bash
# SPDX-FileCopyrightText: 2023 Makishi Kiyosawa
# SPDX-License-Identifier: BSD-3-Clause

# statsプログラムに数値のリストを渡し、出力を変数に格納します。
# ここでは正しい数値（10, 20, 30, 40, 50）のみを渡しています。
out=$(echo -e "10\n20\n30\n40\n50" | ./stats)

# 期待される出力を定義します。
# この出力には、数値リストに基づく統計情報が含まれています。
expected="合計: 150.0
平均: 30.0
中央値: 30.0
最大値: 50.0
最小値: 10.0
数: 5"

# 実際の出力と期待される出力を比較します。
# 一致する場合はテスト成功、一致しない場合はテスト失敗と判定します。
if [[ "${out}" == "$expected" ]]; then
    echo "テスト成功"
    exit 0
else
    echo "テスト失敗"
    echo "期待される出力: $expected"
    echo "実際の出力: $out"
    exit 1
fi

