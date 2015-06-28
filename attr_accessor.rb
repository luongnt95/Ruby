class Person

	def name
		@name
	end

	def name=(str) # name = (str) error. It has to be: name=(str)
		@name = str
	end
end

person = Person.new
person.name = 'luong'
puts person.name

class Person
	attr_reader :name
	attr_writer :name
end

person = Person.new
person.name = 'luong'
puts person.name


class Person
	attr_accessor :name

	def greeting
		"Hello #{name}"
	end
end

person = Person.new
person.name = 'luong'
puts person.name
puts person.greeting

# setter and getter are used to hide data, to avoid the case that others can access unexpected methods in class, to check whether the parameter is valid when pass it to class