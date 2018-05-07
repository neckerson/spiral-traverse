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

      traverse_top(i)

      traverse_right(i)

      traverse_bottom(i)

      traverse_left(i)
    end
  end

  private

  def end_of_matrix?
    @x < @num_elements
  end

  def traverse_top(i)
    if end_of_matrix?
      (i...@width - i).each do |top|
        puts "#{@matrix[i][top]}"
        @x += 1
      end
    else
      return
    end
  end

  def traverse_right(i)
    if end_of_matrix?
      (i+1..@height-1-i).each do |right|
        puts "#{@matrix[right][@width - 1 - i]}"
        @x += 1
      end
    else
      return
    end
  end

  def traverse_bottom(i)
    if end_of_matrix?
      (i+1..@width-2-i).reverse_each do |bottom|
        puts "#{@matrix[@height-1-i][bottom]}"
        @x += 1
      end
    else
      return
    end
  end

  def traverse_left(i)
    if end_of_matrix?
      (i+1..@height-1-i).reverse_each do |left|
        puts "#{@matrix[left][i]}"
        @x += 1
      end
    else
      return
    end
  end

end
