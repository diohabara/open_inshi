#!/bin/bash

# 対象ディレクトリを設定
directory="./the_university_of_tokyo/graduate_school_of_information_science_and_technology/information_and_communication_engineering/"

# 対象ディレクトリ内のすべてのファイルをループ
find "$directory" -type f -name '*' | while read -r file; do
    # 元のファイル名を取得（ディレクトリ部分を除く）
    filename=$(basename "$file")
    # ファイルパスからディレクトリ部分を取得
    dir=$(dirname "$file")

    # 数字の部分を1減らす
    new_filename=$(echo "$filename" | perl -pe 's/(\d+)/$1 - 1/eg')

    # ファイル名が変更されている場合にのみリネーム
    if [ "$filename" != "$new_filename" ]; then
        mv "$file" "$dir/$new_filename"
    fi
done
