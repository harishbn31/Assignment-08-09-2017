str = "ZNGA 1300 2.66 B, CLH15.NYM 50 56.32 B, OWW 1000 11.623 B, OGG 20 580.1 B"

# Quote /space/ Quantity /space/ Price /space/ Status
def stockholder(str)
	hash_st = {}
	total = 0
	str.split(", ").each do |client|
		puts client
	end
	

end
puts stockholder(str)