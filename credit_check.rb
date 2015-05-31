require 'pry'

card_number = "4024007136512380"

valid = false

card_number_reverse = card_number.split("").reverse
card_number_with_product = card_number_reverse.map.with_index do |number, index|
	number = number.to_i
	if index == 1
		number*=2
	elsif index%2!=0
		number*=2
	else
		number
	end

	if number >= 10
		number = number.to_s
		first_digit = number[0].to_i
		second_digit = number[1].to_i
		number = first_digit + second_digit
	else
		number
	end

end

master_sum = card_number_with_product.reduce(:+)
remainder = master_sum % 10

if remainder == 0
	valid == true
	puts "The number is valid!"
else
	puts "The number is invalid!"
end









# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"



# ALREADY DONE:
# iterate through each number in the array (in reverse order)
# if the element's index is 0, then double the number
# if the element's index is divisible by 2, then double the number
# if the product is greater than or equal to 10, split the product and sum the two digits
# add elements in the array into a master sum
# perform modulo 10 on master sum
# if remainder equals 0, the credit card number is valid
# else, it's invalid

