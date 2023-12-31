#!/usr/bin/bash
# SPDX-FileCopyrightText: 2023 Makishi kiyosawa
# SPDX-License-Identifier: BSD-3-Clause

# statsプログラムに小数点を含む数値のリストを渡し、出力を変数に格納します。
# この例では、10.5, 20.3, 30.2, 40.1, 50.0 という小数点を含む数値を使用しています。
out=$(echo -e "10.5\n20.3\n30.2\n40.1\n50.0" | ./stats 2>&1)

# 期待される出力を定義します。
# この出力には、小数点を含む数値リストに基づく統計情報が含まれています。
expected_output="合計: 151.1
平均: 30.22
中央値: 30.2
最大値: 50.0
最小値: 10.5
数: 5"

# 実際の出力と期待される出力を比較します。
# 一致する場合はテスト成功、一致しない場合はテスト失敗と判定します。
if [[ "${out}" == "$expected_output" ]]; then
    echo "テスト成功"
    exit 0
else
    echo "テスト失敗"
    echo "期待される出力: $expected_output"
    echo "実際の出力: $out"
    exit 1
fi

