#!/user/bin/bash
# SPDX-FileCopyrightText: 2023 Makishi Kiyosawa
# SPDX-License-Identifier: BSD-3-Clause

# plusプログラムの出力を変数に格納します。
# この例では、正しい数値（10, 20, 30, 40, 50）と
# 誤った入力（'Bm7-5'）を含む入力をテストします。
out=$(echo -e "10\n20\nBm7-5\n30\n40\n50" | ./plus 2>&1)

# 期待される出力を定義します。
# この出力にはエラーメッセージと統計情報が含まれています。
expected_output="無効な入力: 'Bm7-5' は数値ではありません。
合計: 150.0
平均: 30.0
中央値: 30.0
最大値: 50.0
最小値: 10.0
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

