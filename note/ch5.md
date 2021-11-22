---
markdown:
  path: ../output/ch5.md
---



# 第5章 設計技法(3): 動的計画法

## キーワード

* 動的計画法(`dynamic programming`, `DP`)
* グラフ
* 頂点
* 辺
* 部分構造最適性(`optimal substructure`)
* 緩和(`relaxation`)
* テンプレート関数
* 参照型
* 貰う遷移形式(`pull-based`)
* 配る遷移形式(`push-based`)
* メモ化再帰
* ナップサック問題
* 編集距離(`edit distance`)
* 系列アラインメント(`sequence alignment`)
* 最小コスト弾性マッピング



## Code

5.1

@import "../src/ch5/code5_1.rb"

5.2

@import "../src/ch5/code5_2.rb"

5.3

@import "../src/ch5/code5_3.rb"

5.4

@import "../src/ch5/code5_4.rb"

5.5

@import "../src/ch5/code5_5.rb"

5.6

Rubyでは参照型の引数がないため、 `#chmin()` を利用しない形とした。

@import "../src/ch5/code5_6.rb"

5.7

@import "../src/ch5/code5_7.rb"

5.8

@import "../src/ch5/code5_8.rb"

5.9

TODO: 合ってるか怪しい。サンプルデータを整えて確認する。

@import "../src/ch5/code5_9.rb"



## Quiz

5.1 [AtCoder: Educational DP Contest C](https://atcoder.jp/contests/dp/tasks/dp_c)

TODO: 解答と解き方が違うので比較してみる。

@import "../src/ch5/quiz5_1.rb"

5.2

TODO: よくわからんので読む。

@import "../src/ch5/quiz5_2.rb"

5.3 [AtCoder: Typical DP Contest A](https://atcoder.jp/contests/tdpc/tasks/tdpc_contest)

@import "../src/ch5/quiz5_3.rb"
