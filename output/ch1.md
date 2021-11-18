  
  
  
  
#  第1章 アルゴリズムとはなにか
  
  
##  キーワード
  
  
* アルゴリズム(`algorithm`)
* 二分探索法(`binary search method`)
* 線形探索法(`linear search method`)
* 深さ優先探索(`depth-first search(DFS)`)
* 幅優先探索(`breadth-first search(BFS)`)
* マッチング(`matching`)
* 疑似コード
  
  
  
##  Quiz
  
  
1.1 略
  
1.2 略
  
1.3 (図1.3の左側の虫食算)
  
```rb
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
  
```  
  
1.4 (図1.3の右側の虫食算)
  
```rb
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
  
```  
  
1.5 (迷路の最短経路問題)
  
TODO: 経路復元
  
```rb
maze = Array.new(8) { Array.new(8, nil) }
  
start = [0, 0]
goal = [7, 7]
blocked_cells = [
  [0, 4],
  [1, 2], [1, 6], [1, 7],
  [2, 4],
  [3, 1], [3, 3], [3, 4], [3, 5], [3, 6],
  [4, 3],
  [5, 1], [5, 3], [5, 5],
  [6, 5], [6, 7],
  [7, 2], [7, 3],
  [7, 4]
]
maze[0][0] = 0
blocked_cells.each do |(x, y)|
  maze[x][y] = 'B'
end
moves = [[1, 0], [-1, 0], [0, 1], [0, -1]]
step = 0
current_positions = [[0, 0]]
until current_positions.include?(goal) do
  step += 1
  next_positions = []
  
  current_positions.each do |pos|
    moves.each do |(dx, dy)|
      x, y = [pos[0] + dx, pos[1] + dy]
      if 0 <= x && x <= 7 \
        && 0 <= y && y <= 7 \
        && maze[x][y].nil?    # 戻り防止+ブロックマス判定
        next_positions.push([x, y])
        maze[x][y] = step
      end
    end
  end
  
  current_positions = next_positions.uniq
end
  
puts "#{step} steps."
puts maze.reverse.map { |col| col.map{ |cel| cel.to_s.rjust(2) }.join(', ') }.join("\n")
  
```  
  
1.6 略
  