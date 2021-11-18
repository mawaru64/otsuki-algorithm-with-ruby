#      2  [a]     ...num1
#  *  [b] [c]     ...num2
# -----------
# [d]  3  [e]     ...num3
# [f] [g]         ...num4
# -----------
# [h]  4  [i]     ...num5

0.upto(9) do |a|
  0.upto(9) do |c|
    num1 = 2 * 10 + a
    num3 = num1 * c

    digit2_of_num3 = num3 / 10 % 10
    d = num3 / 10 ** 2

    # dが0である場合を除く
    next if d == 0
    # 2桁目が3以外にある場合を除く
    next if digit2_of_num3 != 3

    1.upto(9) do |b|
      num2 = b * 10 + c
      num4 = num1 * b

      g = num4 % 10
      digit3_of_num4 = num4 / 10 ** 2

      # 3桁になる場合を除く
      next if digit3_of_num4 != 0
      # `3 + g`が4にならない場合を除く
      next if 3 + g != 4

      puts <<-EOS
         #{num1}
        *#{num2}
        ---
        #{num3}
        #{num4}
        ---
        #{num3 + num4 * 10}

      EOS
    end
  end
end
