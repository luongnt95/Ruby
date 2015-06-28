# Method_missing, 

class Dummy
	def method_missing(m, *args, &block)
		puts "There's no method called #{m} here -- please try again."
	end

	def h
		puts "Hello world"
	end

end

Dummy.new.h