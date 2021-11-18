n = gets.to_i
@h = gets.split.map(&:to_i)
@dp = Array.new(n) { Float::INFINITY }

def rec(i)
  p @dp
  return @dp[i] if @dp[i] < Float::INFINITY
  return 0 if i.zero?

  res = [@dp[i], rec(i - 1) + (@h[i] - @h[i - 1]).abs].min
  res = [@dp[i], rec(i - 2) + (@h[i] - @h[i - 2]).abs].min if i > 1

  @dp[i] = res
end

rec(n - 1)
puts @dp.last
