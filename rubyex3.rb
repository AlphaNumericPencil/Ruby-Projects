# rubyex3.rb
#create and use a Roster class. The Roster class has an array of
# Studen class objects

class Student
   def initialize( first, last, email )
      @first = first
      @last  = last
      @email = email
   end

   def show
      puts "#{@first}  #{@last}  #{@email}"
   end
end


class Roster
	def initialize
		@students = []
	end
	
	def add_student(student)
		@students.push(student) # .push: Ruby array method
	end
	
	def show
		@students.each do |student|
			student.show
		end
	end
end


# Instantiate a new roster
cs371roster = Roster.new

# use $stdin to read roster file
for each in $stdin.readlines do
	(last, first, email) = each.split(/,  */)

	cs371roster.add_student(student)
end

cs371roster.show
