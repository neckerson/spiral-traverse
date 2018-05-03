# 5 x 5 matrix
#matrix = [[1, 2, 3, 4],
#           [5, 6, 7, 8],
#           [9, 10, 11, 12],
#           [13, 14, 15, 16]]

# 6 x 6 matrix
matrix = [[1, 2, 3, 4, 5, 6],
          [7, 8, 9, 10, 11, 12],
          [13, 14, 15, 16, 17, 18],
          [19, 20, 21, 22, 23, 24],
          [25, 26, 27, 28, 29, 30],
          [31, 32, 33, 34, 35, 36]]

# 5 x 6 matrix
# matrix = [[1, 2, 3, 4, 5],
#           [6, 7, 8, 9, 10],
#           [11, 12, 13, 14, 15],
#           [16, 17, 18, 19, 20],
#           [21, 22, 23, 24, 25],
#           [26, 27, 28, 29, 30]]

matrix = [[1, 2, 3, 4,],
          [5, 6, 7, 8]]

  (i...length - i).each do |top|
    puts "top #{matrix[i][top]}"
  end

  x = 0

  (i+1..length-1-i).each do |right|
    puts "right #{matrix[right][length - 1 - i]}"
    x += 1
  end

  # The thinking here - if we've only traversed ONE space in on the right
  # side, then the only place to go is LEFT, not DOWN

  if x > 1
    (i+1..length-2-i).reverse_each do |bottom|
      puts "bottom #{matrix[length-1-i][bottom]}"
    end
  end

  if x > 1 || x == 1

    (i+1..length-1-i).reverse_each do |left|
      puts "left #{matrix[left][i]}"
    end

    if x == 1
      break
    end
  end

  puts "--------"

end
