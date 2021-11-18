def fibo(n)
  return 0 if n.zero?
  return 1 if n == 1

  fibo(n - 1) + fibo(n - 2)
end
