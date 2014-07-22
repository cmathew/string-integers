#!/usr/bin/env ruby
class Calculator
	def add(numbers)
		total = 0
		numbers.each {|s| total += s.strip.to_i}
		puts "Total is #{total}"	
	end
	
	#find delimiter in input string
	def parse_intput(param_string)	
		default = param_string.eql? "\n"		
		return "," if default
		param_string.split(/\n/)[0]
	end
	
	def parse_numbers(num_string, delimiter)
		delimiting_regex = Regexp.new("[#{delimiter}]")
		num_string.split(delimiting_regex)
	end
end  

calc = Calculator.new

while true do
	puts "You can enter an optional delimiter (default will be [,])"
	delimiter = calc.parse_intput(gets)
	puts "Enter a [#{delimiter}] delimited string of integers"
	num_array = calc.parse_numbers(gets, delimiter)
	calc.add(num_array)
end