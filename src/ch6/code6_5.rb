n = gets.to_i
h, s = n.times.map { gets.split.map(&:to_i) }.transpose

min_score = Float::INFINITY

left = 0
right = 10 ** 10

while right - left > 1
  mid = (left + right) / 2

  ok = true
  t = [0] * n
  n.times do |i|
    if mid < h[i]
      ok = false
    else
      t[i] = (mid - h[i]) / s[i]
    end
  end

  if ok
    right = mid
  else
    left = mid
  end
end

puts right
