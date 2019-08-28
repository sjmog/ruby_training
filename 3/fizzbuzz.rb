#Functions defined
puts "What should the start number be?"

start_number = gets.chomp

puts "And what should the end number be?"

end_number = gets.chomp

FizzBuzz = (start_number.to_i..end_number.to_i).to_a

FizzBuzz.each do |num|
	if num%5==0 && num%3==0
		puts 'FizzBuzz'
	elsif num%3 == 0 
		puts 'Fizz'
	elsif num%5 ==0
		puts 'Buzz'
	else
		puts num
	end
end