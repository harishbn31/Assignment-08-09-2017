
def prime(n)
	numbers = (1..n-1).to_a
	numbers.each do |num|
	if numbers.length == 1
		return true
	end
		if n%2 == 0 && n%num == 0 

				return false
		else
				return true
		end	
	end


end
puts prime(6)