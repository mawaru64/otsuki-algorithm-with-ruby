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
