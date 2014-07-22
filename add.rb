#!/usr/bin/env ruby
class Calculator
	def add(num_string)
		num_string.split(',').each {|s| puts s.strip.to_i}
	end
end  

calc = Calculator.new

while true do
	puts "Please enter a string of numbers, comma-delineated:"
	num_string = gets
	calc.add(num_string)
end