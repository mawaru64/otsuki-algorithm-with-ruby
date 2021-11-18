  
  
#  第4章 設計技法(2): 再帰と分割統治法
  
  
##  キーワード
  
  
* 再帰呼び出し(`recursive call`)
* 再帰関数(`recursive function`)
* ベースケース
* ユークリッドの互除法(`Euclidean Algorithm`)
* 最大公約数(`GCD: greatest common divisor`)
* フィボナッチ数列(`Fibonacci number`)
* メモ化
* キャッシュ
* 動的計画法(`dynamic programming`)
* 部分和問題を解く再帰関数
* 分割統治法(`divide-and-conquer`)
  
  
  
##  Code
  
  
4.1
  
```rb
def tribo(n)
  return 0 if [0, 1].include?(n)
  return 1 if n == 2
  
  tribo(n - 1) + tribo(n - 2) + tribo(n - 3)
end
  
n = gets.to_i
puts tribo(n)
  
```  
  
4.2
  
```rb
@memo = []
  
def tribo(n)
  return 0 if [0, 1].include?(n)
  return 1 if n == 2
  return @memo[n] unless @memo[n].nil?
  
  @memo[n] = tribo(n - 1) + tribo(n - 2) + tribo(n - 3)
end
  
n = gets.to_i
puts tribo(n)
  
```  
  
4.3
  
<pre>Error: ENOENT: no such file or directory, open '/Users/shu/Dropbox/learning/algorithm_and_data_structure_by_otsuki/src/ch4/quiz4_3.rb'</pre>  
  
4.4
  
<pre>Error: ENOENT: no such file or directory, open '/Users/shu/Dropbox/learning/algorithm_and_data_structure_by_otsuki/src/ch4/quiz4_4.rb'</pre>  
  
4.5
  
```rb
def func(n, cur, use)
  return if cur > n
  
  @count += 1 if use == 0b111
  
  func(n, cur * 10 + 7, use | 0b001)  # 7を付け加える
  func(n, cur * 10 + 5, use | 0b010)  # 5
  func(n, cur * 10 + 3, use | 0b100)  # 3
end
  
n = gets.to_i
@count = 0
func(n, 0, 0)
  
puts @count
  
```  
  
4.6
  
```rb
def func(i, w, a)
  # ベースケース
  if i.zero?
    return w.zero? ? true : false
  end
  
  # メモをチェック
  return memo[[i, w]] if @memo[[i, w]]
  
  # a[i - 1]を選ばない場合
  return (@memo[[i, w]] = true) if func(i - 1, w, a)
  
  # a[i - 1]を選ぶ場合
  return (@memo[[i, w]] = true) if func(i - 1, w - a[i - 1], a)
  
  # どちらもfalseだった場合
  false
end
  
n, w = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
@memo = {}
  
puts func(n, w, a) ? 'Yes' : 'No'
  
```  
  
4.7
  
<pre>Error: ENOENT: no such file or directory, open '/Users/shu/Dropbox/learning/algorithm_and_data_structure_by_otsuki/src/ch4/quiz4_7.rb'</pre>  
  
4.8
  
```rb
@memo = []
  
def fibo(n)
  return 0 if n.zero?
  return 1 if n == 1
  return @memo[n] unless @memo[n].nil?
  
  @memo[n] = fibo(n - 1) + fibo(n - 2)
  @memo[n]
end
  
fibo(49)
@memo.each_with_index { |val, idx| puts "#{idx}項目: #{val}" }
  
```  
  
4.9
  
```rb
def func(i, w, a)
  if i.zero?
    return w.zero? ? true : false
  end
  
  return true if func(i - 1, w, a)            # a[i - 1]を選ばない場合
  return true if func(i - 1, w - a[i - 1], a) # a[i - 1]を選ぶ場合
  return false                                # どちらもfalseだった場合
end
  
n, w = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
  
puts func(n, w, a) ? 'Yes' : 'No'
  
```  
  
  
  
##  Quiz
  
  
4.1
  
```rb
def tribo(n)
  return 0 if [0, 1].include?(n)
  return 1 if n == 2
  
  tribo(n - 1) + tribo(n - 2) + tribo(n - 3)
end
  
n = gets.to_i
puts tribo(n)
  
```  
  
4.2
  
```rb
@memo = []
  
def tribo(n)
  return 0 if [0, 1].include?(n)
  return 1 if n == 2
  return @memo[n] unless @memo[n].nil?
  
  @memo[n] = tribo(n - 1) + tribo(n - 2) + tribo(n - 3)
end
  
n = gets.to_i
puts tribo(n)
  
```  
  
4.3 略
  
4.4 略
  
4.5([AtCoder: ABC 081 B](https://atcoder.jp/contests/abc114/tasks/abc114_c ))
  
```rb
def func(n, cur, use)
  return if cur > n
  
  @count += 1 if use == 0b111
  
  func(n, cur * 10 + 7, use | 0b001)  # 7を付け加える
  func(n, cur * 10 + 5, use | 0b010)  # 5
  func(n, cur * 10 + 3, use | 0b100)  # 3
end
  
n = gets.to_i
@count = 0
func(n, 0, 0)
  
puts @count
  
```  
  
TODO: 再帰は苦手だから演習するべし。
  
4.6
  
```rb
def func(i, w, a)
  # ベースケース
  if i.zero?
    return w.zero? ? true : false
  end
  
  # メモをチェック
  return memo[[i, w]] if @memo[[i, w]]
  
  # a[i - 1]を選ばない場合
  return (@memo[[i, w]] = true) if func(i - 1, w, a)
  
  # a[i - 1]を選ぶ場合
  return (@memo[[i, w]] = true) if func(i - 1, w - a[i - 1], a)
  
  # どちらもfalseだった場合
  false
end
  
n, w = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
@memo = {}
  
puts func(n, w, a) ? 'Yes' : 'No'
  
```  
  