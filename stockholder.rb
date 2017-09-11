require 'pry'
str = "ZNGA 1300 2.66 , CLH15.NYM 50 56.32 , OWW 1000 11.623 B, OGG 20 580.1 B"
# Quote /space/ Quantity /space/ Price /space/ Status
def stockholder(str)
	arr = []
	buy = 0
			sell = 0
	str.split(", ").each do |client|

			qoute = client.split(" ")[0]
			qunt = client.split(" ")[1]
			 price = client.split(" ")[2]
			 status = client.split(" ")[3]
		if qoute.include?(" ") || qunt.include?(".") || (status != 'B' && status != 'S')
			arr.push(client)
		else
			if status == 'B' || status == 'b'
			 	 buy += qunt.to_i * price.to_f
			 else status == 'S' ||status == 's'
			 	sell += qunt.to_i * price.to_f
			 end
		
		end
	end
if !arr.nil?
	return "Buy: #{buy} Sell: #{sell} ,nb: #{arr.length}. #{arr.join(";")}"
end
end
puts stockholder(str)