#!/usr/bin/env ruby
class Calculator
	def valid_number?(number)
		number >= 0
	end
	
	def add(numbers)
		total = 0
		invalid_numbers = []
		numbers.each do |num|
			num = num.strip.to_i		
			if !self.valid_number?(num) then
				invalid_numbers << num 
			else 
				total += num
			end
		end
		raise "Negatives not allowed #{invalid_numbers}" if invalid_numbers.any?
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