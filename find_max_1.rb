# DCT3d39 - Find the row with maximum number of 1s
# Given a boolean 2D array, where each row is sorted. Find the row with the maximum number of 1s.

# Example
# Input matrix
# [0 1 1 1]
# [0 0 1 1]
# [1 1 1 1]  // this row has maximum 1s
# [0 0 0 0]

# Output: 2

def max_ones(matrix)
	arr = []
	matrix.each_with_index do |row,index|
		 arr.push(row.count(1))
	end
	arr.each_with_index do |n, index|
		if n==arr.max 
			return index 
		end
	end
end
puts max_ones([[0, 1, 1, 1],[0, 0, 1, 1],[0, 0, 0, 0],[1, 1, 1, 1]])