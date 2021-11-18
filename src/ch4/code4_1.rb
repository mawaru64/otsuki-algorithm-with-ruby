def func(n)
  return 0 if n == 0

  n + func(n - 1)
end

puts func(5)
