#!/usr/bin/env ruby
class Calculator
	def add(num_string)
		total = 0
		num_string.split(',').each {|s| total += s.strip.to_i}
		puts "Total is #{total}"
	end
end  

calc = Calculator.new

while true do
	puts "Please enter a string of numbers, comma-delineated:"
	num_string = gets
	calc.add(num_string)
end