def input_students
puts "Please enter the names of the students"
puts "To finish, just hit enter twice"

students = []

name = gets.chomp

		while !name.empty? do
				students << {name: name, cohort: :november}
				puts "We now have #{students.count} students"
				name = gets.chomp

		end

		students
end

#Im going to create methods here

def header
	puts "The sudents of the Villain Academy"
	puts "-------------------"
end

def print(students)
	students.each do |student|
			puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def footer(students)
	puts "Overall we have #{students.count} great students "
end



#nothing will happen until I call the methods
students = input_students
header
print(students)
footer(students)

