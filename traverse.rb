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

class SpiralTraverse

  def initialize
    @matrix = []
    @width = ""
    @height = ""
    @num_elements = ""
  end

  def traverse(matrix)
    @matrix = matrix
    @width = matrix.first.length
    @height = matrix.length
    @num_elements = matrix.flatten.length
    run
  end

  def run

    (i+1..length-1-i).reverse_each do |left|
      puts "left #{matrix[left][i]}"
    end

    if x == 1
      break
    end
  end

  private

end

spiral_traverse = SpiralTraverse.new

spiral_traverse.traverse(matrix)
