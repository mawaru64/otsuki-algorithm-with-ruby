n, w = gets.split.map(&:to_i)
weight = gets.split.map(&:to_i)
value = gets.split.map(&:to_i)

dp = Array.new(n + 1) { Array.new(w + 1) { 0 } }

n.times do |i|
  (w + 1).times do |j|
    # i番目の品物を選ぶ場合
    if w - weight[i] >= 0
      dp[i + 1][j] = [
        dp[i + 1][j],
        dp[i][j - weight[i]] + value[i]
      ].max
    end

    # i番目の品物を選ばない場合
    dp[i + 1][j] = [
      dp[i + 1][j],
      dp[i][j]
    ].max
  end
end

puts dp[n][w]
