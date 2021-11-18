  
  
  
  
#  第2章 計算量とオーダー記法
  
  
##  キーワード
  
  
* 計算量(`computational complexity`)
* 線形探索法(`linear search method`)
* 二分探索法(`binary search method`)
* ランダウのO記法(`Landau notation`)
* 分割統治法(`divide-and-conquer method`)
* 指数時間(`exponential time`)
* 多項式時間(`polynomial time`)
* 定数時間(`constant time`)
* ハッシュテーブル(`hash table`)
* 時間計算量(`time complexity`)
* 領域計算量(`space complexity`)
* 最悪時間計算量(`worst case time complexity`)
* 平均時間計算量(`average time complexity`)
* クイックソート(`quick sort`)
* Ω記法
* Θ記法
  
  
  
##  Code
  
  
2.1
  
```rb
n = 10_000
puts n
  
count = 0
n.times { count += 1 }
  
```  
  
2.2
  
```rb
n = 10_000
puts n
  
count = 0
n.times { n.times { count += 1 } }
  
```  
  
2.3
  
```rb
n = 100
  
2.step(n, 2) { |i| puts i }
  
```  
  
TODO: 等差数列の和の公式
  
  
  
##  Quiz
  
  
2.1
  
略
  
2.2
  
```rb
0.upto(n - 1) { |i| (i + 1).upto(n - 1) { |j| (j + 1).upto(n - 1) { |k| } } }
  
```  
  
2.3
  
```rb
def is_prime(n)
  return false if n <= 1
  
  2.upto(n) do |p|
    break if p ** 2 > n
  
    return false if n % p == 0
  end
  
  return true
end
  
```  
  