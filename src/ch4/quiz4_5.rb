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
