# With list ls and 3 towns to visit they can make a choice between: [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].

# The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.

# The biggest possible sum taking a limit of 174 into account is then 173 and the distances of the 3 corresponding towns is [55, 58, 60].

ts = [50, 55, 56, 57, 58] 

xs = [50]  

ys = [91, 74, 73, 85, 73, 81, 87] 


def besttravel(km,n,ts)
	if ts.length < 3
		return -1
	else
		sum  = {}
		combo = ts.combination(n).to_a
			combo.each do |arr|
			if km >= arr.inject(:+)
			sum[arr] = arr.inject(:+)
			end
		end
			best = sum.values.max 
			# sum.each do |k,v|
				
			# end
	end
		return "Towns are #{sum.key(best)} distance is #{best}"
end

puts besttravel(163,3,ts)
puts besttravel(163,3,xs)
puts besttravel(230,3,ys)

