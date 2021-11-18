def rec(i)
  return 0 if i.zero?

  res = Float::INFINITY
  chmin(rec, rec(i - 1) + (h[i] - h[i - 1]).abs)
  chmin(rec, rec(i - 2) + (h[i] - h[i - 2]).abs) if i > 1

  res
end
