  
  
  
  
#  第3章 設計技法(1): 全探索
  
  
キーワード
  
* 全探索
* 線形探索法(`linear search method`)
* フラグ(`flag`)
* 再帰関数(`recursive function`)
* 再帰(`recursion`)
* グラフ(`graph`)
* 頂点(`vertex`)
* 辺(`edge`)
  
  
  
##  Code
  
  
3.1
  
```rb
n, v = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
puts "n: #{n}, v: #{v}"
puts "a: #{a}"
  
exist = false
a.each { |a_i| exist = true if a_i == v }
  
puts exist ? 'Yes' : 'No'
  
```  
  
3.2
  
```rb
n, v = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
  
found_id = -1
a.each.with_index do |a_i, idx|
  if a_i == v
    found_id = idx
    break
  end
end
  
puts found_id
  
```  
  
3.3
  
```rb
n = gets.strip.to_i
a = n.times.map { gets.strip.to_i }
  
min_value = 20_000_000
a.each { |a_i| min_value = a_i if a_i < min_value }
  
puts min_value
  
```  
  
3.4
  
```rb
n, k = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
b = n.times.map { gets.strip.to_i }
  
min_value = 20_000_000
a.each do |a_i|
  b.each do |b_j|
    next if a_i + b_j < k
  
    min_value = a_i + b_j if a_i + b_j < min_value
  end
end
  
puts min_value
  
```  
  
3.5
  
```rb
if (bit & (1 << i)).zero?
  # somethong
else
  # other
end
  
```  
  
3.6
  
```rb
n, w = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
  
exist = false
(0...(1 << n)).each do |bit|
  sum = 0
  a.each.with_index { |a_i, idx| sum += a_i if (bit & 1 << idx).positive? }
  
  exist = true if sum == w
end
  
puts exist ? 'Yes' : 'No'
  
```  
  
  
##  Quiz
  
  
3.1 略
  
3.2
  
```rb
n, v = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
  
puts a.count { |a_i| a_i == v }
  
```  
  
3.3
  
```rb
n = gets.to_i
a = n.times.map { gets.to_i }
  
first_min  = 200_000_000
second_min = 200_000_000
  
a.each do |a_i|
  if a_i <= first_min
    first_min, second_min = a_i, first_min
  elsif a_i <= second_min
    second_min = a_i
  end
end
  
puts second_min
  
```  
  
3.4
  
```rb
n = gets.to_i
a = n.times.map { gets.to_i }
min, max = 200_000_000, -200_000_000
  
a.each do |a_i|
  min = a_i if a_i < min
  max = a_i if a_i > max
end
  
diff = max - min
puts diff
  
```  
  
3.5([AtCoder: ABC 081 B](https://atcoder.jp/contests/abc081/tasks/abc081_b ))
  
```rb
n = gets.to_i
a = gets.split.map(&:to_i)
  
count = 0
while a.all? { |a_i| a_i.even? }
  a = a.map { |a_i| a_i / 2 }
  count += 1
end
  
puts count
  
```  
  
3.6([AtCoder: ABC 051 B](https://atcoder.jp/contests/abc051/tasks/abc051_b ))
  
```rb
k, s = gets.split.map(&:to_i)
  
count = 0
0.upto(k) do |x|
  0.upto(k) do |y|
    z = s - x - y
    count += 1 if 0 <= z && z <= k
  end
end
  
puts count
  
```  
  
3.7([AtCoder: ABC 045 C](https://atcoder.jp/contests/abc045/tasks/arc061_a ))
  
TODO: Bit全探索？
  
```rb
s = gets.strip.split('')
  
0...((1 << s.size) - 1).each do |b|
  s.reduce('').with_index do |res, s_i, idx|
    if (b & 1 << idx).positive?
      res += s_i + '+'
    else
      res += s_i
  end
  
```  
  