#!/bin/bash

# plusプログラムの出力を変数に格納
out=$(echo -e "10\n20\n30\n40\n50" | ./plus)

# 期待される出力と比較
expected="合計: 150
平均: 30
中央値: 30
最大値: 50
最小値: 10
数: 5"
if [[ "${out}" == "$expected" ]]; then
    echo "テスト成功"
    exit 0
else
    echo "テスト失敗"
    echo "期待される出力: $expected"
    echo "実際の出力: $out"
    exit 1
fi
