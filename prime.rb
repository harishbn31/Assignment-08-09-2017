
# Is Prime

# Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.

# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

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