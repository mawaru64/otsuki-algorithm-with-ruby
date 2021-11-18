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
