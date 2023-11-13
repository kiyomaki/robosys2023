#!/bin/bash

# plusプログラムの出力を変数に格納（小数点を含む数値を含む）
out=$(echo -e "10.5\n20.3\n30.2\n40.1\n50.0" | ./plus 2>&1)

# 期待される出力と比較
expected_output="合計: 151.1
平均: 30.22
中央値: 30.2
最大値: 50.0
最小値: 10.5
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
