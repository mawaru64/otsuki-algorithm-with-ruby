def func(n)
  puts "func(#{n}) を呼び出しました"

  return 0 if n == 0

  res = n + func(n - 1)
  puts "#{n}までの和 = #{res}"

  return res
end

func(5)
