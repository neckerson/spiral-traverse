# 5 x 5 matrix
#matrix = [[1, 2, 3, 4],
#           [5, 6, 7, 8],
#           [9, 10, 11, 12],
#           [13, 14, 15, 16]]

# 6 x 6 matrix
# matrix = [[1, 2, 3, 4, 5, 6],
#           [7, 8, 9, 10, 11, 12],
#           [13, 14, 15, 16, 17, 18],
#           [19, 20, 21, 22, 23, 24],
#           [25, 26, 27, 28, 29, 30],
#           [31, 32, 33, 34, 35, 36]]

# 5 x 6 matrix
matrix = [[1, 2, 3, 4, 5],
          [6, 7, 8, 9, 10],
          [11, 12, 13, 14, 15],
          [16, 17, 18, 19, 20],
          [21, 22, 23, 24, 25],
          [26, 27, 28, 29, 30]]

# 2 x 4 matrix
# matrix = [[1, 2, 3, 4,],
#           [5, 6, 7, 8]]


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

    @x = 0

    (0...@width).each do |i|

      if end_of_matrix?
        traverse_top(i)
      else
        break
      end

      if end_of_matrix?
        traverse_right(i)
      else break
      end

      if end_of_matrix?
        traverse_bottom(i)
      else break
      end

      if end_of_matrix?
        traverse_left(i)
      else break
      end
    end
  end

end

private

def end_of_matrix?
  @x < @num_elements
end

def traverse_top(i)
  (i...@width - i).each do |top|
    puts "top #{@matrix[i][top]}"
    @x += 1
  end

  def traverse_right(i)
    (i+1..@height-1-i).each do |right|
      puts "right #{@matrix[right][@width - 1 - i]}"
      @x += 1
    end
  end
  def traverse_bottom(i)
    (i+1..@width-2-i).reverse_each do |bottom|
      puts "bottom #{@matrix[@height-1-i][bottom]}"
      @x += 1
    end
  end
  def traverse_left(i)
    (i+1..@height-1-i).reverse_each do |left|
      puts "left #{@matrix[left][i]}"
      @x += 1
    end
  end
end

spiral_traverse = SpiralTraverse.new

spiral_traverse.traverse(matrix)
