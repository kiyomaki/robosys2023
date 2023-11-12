#!/bin/bash

out=$(echo -e "10.5\n20.3\n30.2" | ./plus)
expected_output="合計: 61.0
平均: 20.333333333333332
中央値: 20.3
最大値: 30.2
最小値: 10.5
数: 3"

if [[ "${out}" == "$expected_output" ]]; then
    echo "テスト成功"
    exit 0
else
    echo "テスト失敗"
    echo "期待される出力: $expected_output"
    echo "実際の出力: $out"
    exit 1
fi

