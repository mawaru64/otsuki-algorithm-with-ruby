n = 8
a = [3, 5, 8, 10, 14, 17, 21, 39]

def binary_search(key, a)
  left = 0
  right = a.size - 1
  while right >= left
    mid = (left + right) / 2

    if a[mid] == key
      return mid
    elsif a[mid] < key
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

puts "10: #{binary_search(10, a)}"
puts "3: #{binary_search(3, a)}"
puts "39: #{binary_search(39, a)}"

puts "-100: #{binary_search(-100, a)}"
