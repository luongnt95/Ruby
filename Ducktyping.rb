class Person
	def talk
		'Hello'
	end

	def walk
		'Walking...'
	end
end

class Robot
	def talk
		'Hi'
	end

	def walk
		'Walking...'
	end
end

class Dog
	def bark
		'gow gow gow !!!'
	end

	def walk
		'Walking...'
	end
end

def make_it_talk(person)
	person.talk
end

puts make_it_talk(Person.new)
puts make_it_talk(Robot.new)

# puts make_it_talk(Dog.new) is error because dog can't talk so a dog can't be treated as if it were a person

def make_it_walk(person)
	person.walk
end

puts make_it_walk(Person.new)
puts make_it_walk(Robot.new)
puts make_it_walk(Dog.new)