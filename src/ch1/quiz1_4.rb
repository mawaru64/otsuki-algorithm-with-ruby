def digit_n(num, digit)
  num / 10 ** (digit - 1) % 10
end

100_000.upto(999_999) do |row1|
  0.upto(9) do |digit1_of_row2|
    row3 = row1 * digit1_of_row2
    next unless digit_n(row3, 5) == 6 && digit_n(row3, 6) == 6 && digit_n(row3, 7) == 0

    0.upto(9) do |digit2_of_row2|
      row4 = row1 * digit2_of_row2
      next unless digit_n(row4, 6) == 6 && digit_n(row4, 7) == 0

      0.upto(9) do |digit3_of_row2|
        row5 = row1 * digit3_of_row2
        next unless digit_n(row5, 3) == 6 && digit_n(row5, 4) == 6 && digit_n(row5, 5) == 6 && digit_n(row5, 7) != 0

        1.upto(9) do |digit4_of_row2|
          row6 = row1 * digit4_of_row2
          next unless digit_n(row6, 1) == 6 && digit_n(row6, 4) == 6 && digit_n(row6, 6) != 0

          row7 = row3 + 10 * row4 + 10 ** 2 * row5 + 10 ** 3 * row6
          if digit_n(row7, 5) == 6 && digit_n(row7, 6) == 6 && digit_n(row7, 10) != 0
            row2 = digit1_of_row2 + 10 * digit2_of_row2 + 10 ** 2 * digit3_of_row2 + 10 ** 3 * digit4_of_row2
            puts "#{row1} * #{row2} = #{row7}"
          end
        end
      end
    end
  end
end
