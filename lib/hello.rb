def hello_t(array)
	if block_given?
		i = 0
		while i < array.size
			yield(array[i])
			i += 1
		end
		array
	else
		puts "Hey! No block was given!"
	end
end

# call your method here!

puts hello_t(['uno', 'due', 'tre']) {|e| puts e}.inspect