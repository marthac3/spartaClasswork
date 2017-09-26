#simple loop
#loop do
#	puts "thing"
#end

#while loop
i = 0
while i < 10
	puts "While: #{i}"
	i += 1
end

#until loop
j = 0

until j > 10
	puts "Until: #{j}"
	j += 1
end

#for loop
for k in 0..5
	puts "For loop : #{k}"
end

#times
5.times do
	puts "hello"
end

#each
names = ["Abby", "Bill", "Charlie"]
names.each do |name|
	puts name
end

#array enumerators
#map
words = ["Luke", "Anakin", "Leia", "Han", "Chewie"]
words.map! do |word|
	word.reverse
end
puts words

#reduce
numbers = [3,6,24,74657,245,23,7,2,6356]
sum = numbers.reduce do |total, number|
	total + number
end
puts sum

#puts some_numbers.reduce(:+)

#select
students = ["Liam", "Luke", "James", "Charlotte"]

cool_students = students.select do |student|
	student.chars.first === "L"
end
puts cool_students