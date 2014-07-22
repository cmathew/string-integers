#!/usr/bin/env ruby

while true do
	puts "Please enter a string of numbers, comma-delineated:"
	num_string = gets
	num_string.split(',').each {|s| puts s.strip.to_i}
end