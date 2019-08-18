print 'Please enter your name:' do
end

name=gets.chomp

if name==''
	return puts 'Hello, PERSON WITH NO NAME!'
else
	return puts 'Hello, ' + name.upcase + "!"  
end
