def gcd(m, n)
  return m if n.zero?

  gcd(n, m % n)
end

puts gcd(51, 15)
puts gcd(15, 51)
