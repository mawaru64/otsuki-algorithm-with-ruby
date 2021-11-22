=begin
Sample Input Text

5
2 4 7 4 1 2
3 3 7 5 3 5
8 7 6 5 4 1
7 5 6 3 9 7
1 1 1 2 5 1
1 3 5 7 9 0
=end

n = gets.to_i
c = (n + 1).times.map { gets.split.map(&:to_i) }
dp = [Float::INFINITY] * (n + 1)
dp[0] = 0

0.upto(n) do |i|
  0.upto(i - 1) do |j|
    dp[i] = [dp[i], dp[j] + c[j][i]].min
  end
end

p dp
puts dp[n]
