# Rubyではメソッドへの参照渡しは出来ないようなので、
# DP配列とそのIndexを渡して値をセット
def chmin(dp, dp_index, competitor)
  dp[dp_index] = competitor if dp[dp_index] > competitor
end
