def calc_dist(x1, y1, x2, y2)
  Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
end

n = 3
xs = [1, 5, 10]
ys = [1, 7, 8]

min_dist = Float::MAX

0.upto(n - 1) do |i|
  (i + 1).upto(n - 1) do |j|
    dist_i_j = calc_dist(xs[i], ys[i], xs[j], ys[j])

    min_dist = dist_i_j if dist_i_j < min_dist
  end
end

puts min_dist
