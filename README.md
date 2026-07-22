# open_inshi

収録範囲: **fy2000–fy2025**（研究科・専攻ごとに範囲は異なり、連続収録を保証しません）

## 理念

- 大学院入試の過去問が一部の内部生のみに共有されていることに対して、情報の非対称性を解消するために、過去問をオープンに公開することが目的です。
- 解答は収録しません。
- また、過去問の著作権は各大学にあります。

## 命名規則

- ディレクトリ名は `_` (アンダーバー)区切りで、**小文字**の英語の正式名称にする

  - 例: 東京大学(The University of Tokyo) → `the_university_of_tokyo`
  - 例: 総合情報学専攻(Creative Informatics) → `creative_informatics`

- 過去問ファイル名は `fy${year}_${session}[_${lang}][_${type}][_${part}].pdf` とする

  - `year` は、その試験が実施された日本の会計年度とする
  - 日本の会計年度は 4 月 1 日から翌年 3 月 31 日までとする
  - 大学側の入学年度・募集年度・「○○年度入試」表記ではなく、PDF 本文または公式ページに記載された実際の試験実施日で判断する
  - 例: 2025 年 8 月実施の試験は `fy2025`
  - 例: 2026 年 2 月実施の試験は `fy2025`
  - `session` は `s`(夏・春・通常), `w`(冬), `f`(秋), `r1`(第1回), `r2`(第2回) とする
  - `lang` は `ja`(和文), `en`(英文) とし、省略可能とする
  - `type` と `part` は小文字英数字と `_` で表し、省略可能とする
  - 各要素は連結せず、必ず `_` で区切る
  - 解答ファイルは収録しない
  - 例: `fy2025_s.pdf`(2025 年 8 月実施の夏入試)
  - 例: `fy2025_w.pdf`(2026 年 2 月実施の冬入試)
  - 例: `fy2025_s_ja.pdf`(2025 年 8 月実施の夏入試 和文)
  - 例: `fy2023_s_en_1.pdf`(2023年度夏入試 英文 第1問)
  - 例: `fy2024_s_program.pdf`(2024年度夏入試 プログラミング)
  - 例: `fy2018_r2_economics.pdf`(2018年度 第2回 経済学)
  - 入試回を特定しない資料は `fy${year}_${type}.pdf` とする
  - 例: `fy2020_report.pdf`(2020年度 レポート等、入試回を特定しない資料)

## 収録方針

- 収録対象は、大学が公開した過去問本体に限る
- サンプル問題、解答、解答例、出題の意図、採点基準、募集要項、出願書類、答案作成テンプレートは収録しない
- TeX ソース、解答作成用の画像、図面、プログラム、lint/CI 設定、npm 依存関係などの作業用ファイルは置かない
- 公式ページで現在公開されている PDF を優先する
- 現行公式ページから消えている場合は、元の公式 URL の Wayback Machine アーカイブを利用してよい
- 非公式サイトの問題文は、公式由来であることを検証できない限り収録しない

## 更新手順

1. README の「公式の過去問置き場」から、更新対象の研究科・専攻を確認する。
2. 新しい PDF が公開されていないか確認する。ページ上のリンクだけでなく、既存ファイル名から推定できる公式 URL も確認する。
3. 現行 URL が 404 になっている場合は、元の公式 URL を Wayback Machine の CDX API でも確認する。
4. PDF 本文または公式ページのリンク文言から試験実施日を読み、`fy` を決める。大学側の「2026年度入試」表記でも、2025 年 8 月実施なら `fy2025_s` とする。
5. 最新年度の「入試年度」と「実施年度」の対応関係を基準に、同じ専攻の古い PDF も同じ規則でそろっているか確認する。
6. 日本語版と英語版が別 PDF の場合は `_ja` / `_en` を付ける。1つの PDF に日本語・英語が併記されている場合、または単一言語版しかない場合は省略してよい。
7. サンプル問題、解答例、出題の意図、募集要項など、過去問本体ではない PDF は追加しない。
8. README の収録年度範囲と既知の欠番を更新する。

更新後は以下を確認する。

- すべての PDF が命名規則に従っている
- 解答ファイルや作業用ファイルが残っていない
- 日本語版と英語版が別 PDF なのに片方が無印になっていない
- PDF が `%PDF-` で始まる有効な PDF である
- 同一ハッシュの重複 PDF がない

## 機会があれば更新します

実施されなかった試験や、公式に問題が公開されていない試験は収録しておりません。

以下の年度範囲は収録ファイルの最小年度から最大年度を表し、連続収録を保証するものではありません。既知の欠番は以下の通りです。

- 東京大学大学院工学系 電気系工学専攻: `fy2020`
  - 現行公式ページ、推定 URL、Wayback Machine で公開 PDF を確認できていない
- 東京大学大学院情報理工学系研究科 一般教育科目(数学): `fy2020`
  - 公式発表で一般教育科目(数学)の筆記試験を実施しないとされている
- 東京大学大学院情報理工学系研究科 創造情報学専攻: `fy2020`, `fy2011_s_en_exam`
  - `fy2020` は公式ページで「掲載しません」とされている
  - `fy2011_s_en_exam` は公式ページにリンクがあるが、Wayback Machine に PDF 本体が保存されていない
- 東京大学大学院情報理工学系研究科 電子情報学専攻: `fy2025`
  - 2027年度入試案内に更新済みの現行公式ページでも、公開済み専門科目は `fy2024` 相当まで
- 東京科学大学(東京工業大学)大学院情報理工学院 情報工学系: `fy2015`, `fy2020`
  - `fy2020` は公式ページで筆答試験を実施しなかったとされている
  - `fy2015` は現行公式ページ、推定 URL、Wayback Machine で公開 PDF を確認できていない
- 東京科学大学(東京工業大学)大学院情報理工学院 数理･計算科学系: `fy2015`
  - 旧公式サイトの `fy2000`–`fy2014` 相当と現行公式ページの `fy2016` 以降の間にあり、Wayback Machine で公開 PDF を確認できていない

- 慶應義塾大学大学院経済学研究科
  - [公式の過去問置き場](https://www.keio.ac.jp/ja/admissions/grad/master/past-exams/)
  - [経済学研究科の過去問](./keio_university/graduate_school_of_economics/)
  - 2018-2025
- 京都大学大学院情報学研究科
  - [公式の過去問置き場](https://www.i.kyoto-u.ac.jp/admission/examarchive/)
  - [数理工学専攻の過去問](./kyoto_university/graduate_school_of_informatics/department_of_applied_mathematics_and_physics/)
  - [通信情報システム専攻の過去問](./kyoto_university/graduate_school_of_informatics/department_of_communications_and_information_engineering/)
  - [知能情報学専攻の過去問](./kyoto_university/graduate_school_of_informatics/department_of_intelligence_science_and_technology/)
  - 2013-2024
- 東京大学大学院工学系
  - [公式の過去問置き場](https://www.eeis.t.u-tokyo.ac.jp/education/subject/)
  - [電気系工学専攻の過去問](./the_university_of_tokyo/graduate_school_of_engineering/eeis)
  - 2012-2024
- 東京大学大学院情報理工学系研究科
  - [公式の過去問置き場](https://www.i.u-tokyo.ac.jp/edu/entra/examarchive.shtml)
  - [一般教育科目(数学)の過去問](./the_university_of_tokyo/graduate_school_of_information_science_and_technology/math)
    - 2001-2025
  - [コンピュータ科学専攻の過去問](./the_university_of_tokyo/graduate_school_of_information_science_and_technology/computer_science)
    - 2014-2025
  - [創造情報学専攻の過去問](./the_university_of_tokyo/graduate_school_of_information_science_and_technology/creative_informatics)
    - 2005-2025
  - [電子情報学専攻の過去問](./the_university_of_tokyo/graduate_school_of_information_science_and_technology/information_and_communication_engineering)
    - 2008-2024
  - [数理情報学専攻の過去問](./the_university_of_tokyo/graduate_school_of_information_science_and_technology/mathematical_informatics)
    - 2015-2025
- 東京科学大学(東京工業大学)大学院情報理工学院
  - [公式の過去問置き場](https://admissions.isct.ac.jp/ja/013/graduate/examination-questions)
  - [情報工学系の過去問](./tokyo_institute_of_technology/graduate_school_of_information_science_and_engineering/department_of_computer_science)
    - 2002-2024
  - [数理･計算科学系の過去問](./tokyo_institute_of_technology/graduate_school_of_information_science_and_engineering/department_of_mathematical_and_computing_science)
    - 2000-2025

## 今後は更新しません

筆記試験が行われなくなった・周りから必要だという声がない(外部受験生からの需要が低そう)等の理由で、今後は更新しません。

更新が必要だと思われる方がいればご連絡ください。

- 北海道大学経済学研究科
  - [公式の過去問置き場](https://www.econ.hokudai.ac.jp/e_exam/daigakuin/pqc/)
  - [北海道大学経済学研究科の過去問](./hokkaido_university/graduate_school_of_economics_and_business)
- 一橋大学経済学研究科
  - [公式の過去問置き場](https://www.econ.hit-u.ac.jp/jpn/page/examinee/graduate_admissions/past_exam.html)
  - [一橋大学大学院経済学研究科の過去問](./hitotsubashi_university/graduate_school_of_economics)
- 京都大学経済学研究科
  - [公式の過去問置き場](https://www.econ.kyoto-u.ac.jp/top/in-kakomon/)
  - [京都大学経済学研究科の過去問](./kyoto_university/graduate_school_of_economics)
- 大阪大学大学院情報科学研究科
  - [公式の過去問置き場](https://www.ist.osaka-u.ac.jp/japanese/admission/past-exam.html)
  - [情報基礎数学専攻の過去問](./osaka_university/graduate_school_of_information_science_and_technology/department_of_information_and_physical_sciences)
  - [情報数理学専攻の過去問](./osaka_university/graduate_school_of_information_science_and_technology/department_of_pure_and_applied_mathematics)
  - [コンピュータサイエンス専攻･情報システム工学専攻･情報ネットワーク学専攻･マルチメディア工学専攻･バイオ情報工学専攻の過去問](./osaka_university/graduate_school_of_information_science_and_technology/others)
- 東京大学大学院総合文化研究科
  - [公式の過去問置き場](https://system.c.u-tokyo.ac.jp/p-graduate/guide.html)
  - [広域科学システムの過去問](./the_university_of_tokyo/graduate_school_of_arts_and_sciences/department_of_general_systems_studies)
- 東京大学大学院学際情報学府
  - [公式の過去問置き場](http://www.iii.u-tokyo.ac.jp/admissions/master-pastexams)
  - [総合分析情報学コースの過去問](./the_university_of_tokyo/graduate_school_of_interdisciplinary_information_studies/applied_computer_science_course)
- 筑波大学大学院システム情報工学研究科
  - [公式の過去問置き場](https://www.cs.tsukuba.ac.jp/admission/past-exam.html)
  - [コンピュータサイエンス専攻の過去問](./university_of_tsukuba/graduate_school_of_science_and_technology/department_of_computer_science)
- 早稲田大学大学院経済学研究科
  - [公式の過去問置き場](https://www.waseda.jp/inst/admission/graduate/past_test/)
  - [経済学研究科の過去問](./waseda_university/graduate_school_of_economics)
- 早稲田大学大学院基幹理工学研究科
  - [公式の過去問置き場](https://www.waseda.jp/inst/admission/graduate/past_test/)
  - [情報理工･情報通信専攻の過去問](./waseda_university/graduate_school_of_fundamental_science_and_engineering/department_of_communications_and_computer_engineering)
  - [数学応用数理専攻の過去問](./waseda_university/graduate_school_of_fundamental_science_and_engineering/department_of_pure_and_applied_mathematics)

## 想定質疑応答

- Q: 過去問を追加してくれませんか？
  - A: そのような Issue は作成せず、ご自身で公式公開 PDF を確認し、この README の収録方針・命名規則・更新手順に従って追加してください。
- Q: なぜ東京大学大学院情報理工学研究科システム情報学専攻の過去問がないですか？
  - A: 他の専攻の過去問で受験が可能であり、過去問が[diohabara](https://github.com/diohabara)の興味の対象外であるためです。
- Q: xxx 大学の過去問がないのはなぜですか？
  - A: [diohabara](https://github.com/diohara)の興味の対象外であるためです。
