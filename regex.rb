text = 'aabcd'
puts text.sub('a', 'b')
puts text.gsub('a', 'b') #gsub means global subsitute

#Regular Expression

text = 'your name is luong'
puts text.sub(/^..../, 'my') # ^ means beginning of the line, . means any character
puts text.sub(/\A..../, 'my') # \A the start of a string
puts text.sub(/.....$/, 'long') # $ the end of the line
puts text.sub(/.....\Z/, 'long')

# \w letter digit underscore, \W not w, \d digit, \D not d, \s space, \S not s

'xyz'.scan(/./) { |letter| puts letter}

text = 'I have 20$ and 1 candy'
text.scan(/\d/) do |x|
	puts x
end

text.scan(/\d+/) do |x|
	puts x
end

text.scan(/[abc]/) { |x| puts x}

text = 'I have a dream'
text.scan(/[A-z]/) { |x| puts x}