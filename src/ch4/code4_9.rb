def func(i, w, a)
  if i.zero?
    return w.zero? ? true : false
  end

  return true if func(i - 1, w, a)            # a[i - 1]を選ばない場合
  return true if func(i - 1, w - a[i - 1], a) # a[i - 1]を選ぶ場合
  return false                                # どちらもfalseだった場合
end

n, w = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }

puts func(n, w, a) ? 'Yes' : 'No'
