#Functions defined
puts "What should the start number be?"

start_number = gets.chomp

puts "And what should the end number be?"

end_number = gets.chomp

FizzBuzz = (start_number.to_i..end_number.to_i).to_a

FizzBuzz.each do |num|
	if num%3 == 0 
		puts 'Fizz'
	else 
		puts num
	end
end