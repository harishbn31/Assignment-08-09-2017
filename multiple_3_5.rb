# DCTdfa7 - Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.

def multiple(numbers)
	sum = 0
	nums = numbers.find_all{|n| n%3 ==0 || n%5==0}
	nums.each do |num|
		sum += num
	end
	return sum
end
puts multiple((0..9).to_a)
