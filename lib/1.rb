### Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:
#
# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```

puts "What calculation would you like to do? (add, sub, mult, div)"
calculation = gets.chomp
puts "What is the first number?"
x = gets.to_i
puts "What is the second number?"
y = gets.to_i

if calculation == 'add'
  puts "Your result is #{x + y}"
elsif calculation == 'sub'
  puts "Your result is #{x - y}"
elsif calculation == 'mult'
  puts "Your result is #{x * y}"
elsif calculation == 'div'
  puts "Your result is #{x / y}"
else
  puts "#{calculation} is not a valid option."
end
