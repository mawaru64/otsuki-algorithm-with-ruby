def func(i, w, a)
  # ベースケース
  if i.zero?
    return w.zero? ? true : false
  end

  # メモをチェック
  return memo[[i, w]] if @memo[[i, w]]

  # a[i - 1]を選ばない場合
  return (@memo[[i, w]] = true) if func(i - 1, w, a)

  # a[i - 1]を選ぶ場合
  return (@memo[[i, w]] = true) if func(i - 1, w - a[i - 1], a)

  # どちらもfalseだった場合
  false
end

n, w = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
@memo = {}

puts func(n, w, a) ? 'Yes' : 'No'
