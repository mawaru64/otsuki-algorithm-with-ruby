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



## Code

5.1

@import "src/ch5/quiz5_1.rb"

5.2

@import "src/ch5/quiz5_2.rb"

5.3

@import "src/ch5/quiz5_3.rb"

5.4

@import "src/ch5/quiz5_4.rb"

5.5

@import "src/ch5/quiz5_5.rb"

5.6

Rubyでは参照型の引数がないため、 `#chmin()` を利用しない形とした。

@import "src/ch5/quiz5_6.rb"
