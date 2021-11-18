def fibo(n)
  puts "fibo(#{n}) を呼び出しました"

  # ベースケース
  return 0 if n == 0
  return 1 if n == 1

  res = fibo(n - 1) + fibo(n - 2)
  puts "#{n} 項目 = #{res}"

  return res
end

fibo(6)
