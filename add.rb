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
	puts "Please enter a string of up to three numbers, comma-delineated:"
	num_string = gets
	#act on first three numbers only
	calc.add(num_string.split(',')[0..2].join(','))
end