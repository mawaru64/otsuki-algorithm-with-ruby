def func(n)
  return 0 if n == 0

  return n + func(n + 1)
end
