matrix = [[1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 16]]

x = 0

(0...matrix.length).each do |i|
  (0...4).each do |top|
    puts matrix[i][top]
  end
  (1..3).each do |right|
    puts matrix[right][matrix.length - 1 + i]
  end
  (0..2).reverse_each do |bottom|
    puts matrix[3][bottom]
  end
  (1..2).reverse_each do |left|
    puts matrix[left][i]
  end
  puts "--------"
  x += 0
end

puts "--------"
puts matrix[1][matrix.length - 1]
puts matrix[2][matrix.length - 1]
puts matrix[3][matrix.length - 1]

puts matrix[3][matrix.length - 2]
puts matrix[3][matrix.length - 3]
puts matrix[3][matrix.length - 4]
