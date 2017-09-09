require 'pry'
str = "ZNGA 1300 2.66 B, CLH15.NYM 50 56.32 B, OWW 1000 11.623 B, OGG 20 580.1 B"
 
# Quote /space/ Quantity /space/ Price /space/ Status
def stockholder(str)
	hash_st = {}
	arr = []
	str.split(", ").each do |client|
		client.split(" ").each_with_index do |att,index|
			if index == 1 && att.to_i == att.to_s.to_i
				arr.push(att.to_i)
			elsif index == 2 && att.to_f == att.to_s.to_f
				arr.push(att.to_f)				
			else index == 3 
				if  att == "B" || att == "b"
				arr.push(att)
				elsif att == "S" || att == "s"
				arr.push(att)					
				else

				end
			end
		end	
	end
	buy = 0
	sell = 0
	i = 0
	while i < arr.length
		if arr[i+2] == 'B' || arr[i+2] == 'b'
		 	 buy += arr[i] * arr[i+1]
		 else arr[i+2] == 'S' || arr[i+2] == 's'
		 	sell += arr[i] * arr[i+1]
		 end
		i +=3
	end
	return "Buy: #{buy} Sell: #{sell}"
end
puts stockholder(str)