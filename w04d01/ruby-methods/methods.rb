def say_hello
	puts "Hello, world"
end

def add_numbers(num1, num2=40)
	num1 + num2
end

say_hello
puts add_numbers(3, 19)
puts add_numbers(3)