# rubyex2.rb
# Create and use a fortune class. Contains content, and wordcount method

class Fortune
	attr_accessor	:content
	# word_count:	return number of words in :content
	def word_count
		@wordlist = @content.scan(/\S+/)
				  # - :content is accessed as an instance var
				  # - \S+ = one or more non-whitespace chars
				  # - .scan() searches :content for the regex and returns a list
		@wordlist.size
	end
end

# Construct fortune object cookie
cookie = Fortune.new

# Store output of system fortune command in cookie
cookie.content = `fortune`

puts cookie.content

puts "\nThat fortune contained #{cookie.word_count} words."
