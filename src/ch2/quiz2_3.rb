def is_prime(n)
  return false if n <= 1

  2.upto(n) do |p|
    break if p ** 2 > n

    return false if n % p == 0
  end

  return true
end
