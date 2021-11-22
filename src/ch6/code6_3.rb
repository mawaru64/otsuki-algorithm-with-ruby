puts 'Start Game!'

left = 20
right = 36

while right - left > 1
  mid = left + (right - left) / 2

  puts "Is the age less than #{mid} ? (yes / no)"
  ans = gets.strip

  if ans == 'yes'
    right = mid
  else
    left = mid
  end
end

puts "The age is #{left}!"
