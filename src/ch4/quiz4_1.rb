def tribo(n)
  return 0 if [0, 1].include?(n)
  return 1 if n == 2

  tribo(n - 1) + tribo(n - 2) + tribo(n - 3)
end

n = gets.to_i
puts tribo(n)
