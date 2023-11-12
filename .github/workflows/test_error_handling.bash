#!/bin/bash

# plusプログラムの出力を変数に格納（正しい入力と誤った入力の両方を含む）
out=$(echo -e "10\n20\nBm7-5\n30\n40\n50" | ./plus 2>&1)

# 期待される出力と比較
expected_output="無効な入力: 'Bm7-5' は数値ではありません。
合計: 150
平均: 30
中央値: 30
最大値: 50
最小値: 10
数: 5"
if [[ "${out}" == "$expected_output" ]]; then
    echo "テスト成功"
    exit 0
else
    echo "テスト失敗"
    echo "期待される出力: $expected_output"
    echo "実際の出力: $out"
    exit 1
fi

