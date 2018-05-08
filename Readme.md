#Spiral Traverse
Brute-force solution to traverse MxN matrix in a spiral pattern in Ruby (the matrix is provided as an array of arrays).

This class does not modify the original array, nor does it generate a new array
from the output, simply outputting each element to the terminal as it iterates.

##Usage

Create a new instance of the SpiralTraverse class, and feed it a matrix!

For example...

```ruby
matrix = [[1, 2, 3, 4, 5, 6],
          [7, 8, 9, 10, 11, 12],
          [13, 14, 15, 16, 17, 18],
          [19, 20, 21, 22, 23, 24],
          [25, 26, 27, 28, 29, 30],
          [31, 32, 33, 34, 35, 36]]
```
Then...
```ruby
spiral_traverse = SpiralTraverse.new

spiral_traverse.traverse(matrix)
```
##Summary
This is a fun problem to solve, and could be accomplished a number of ways.

The most elegant solutions use Ruby's built-in Matrix class. Check out the gist below for an example.

https://gist.github.com/jfarmer/d0f37717f6e7f6cebf72
