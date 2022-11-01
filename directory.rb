def input_students
puts "Please enter the names of the students"
puts "To finish, just hit enter twice"

students = []
name = gets.chomp
		
		while !name.empty? do		#saying while name isnt empty continue to input more names
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

def interactive_menu
		students = []
		loop do
				puts "1. Input the students"
				puts "2. Show list of the students"
				puts "9. Exit"

				selection = gets.chomp

				case selection
				when "1"
						students = input_students
				when "2"
					header
					print(students)
					footer(students)
				when "9"
					exit
				else
					puts "I don't know what you meant, please try again!"
				end
		end
end

#nothing will happen until I call the methods
#students = input_students
#header
#print(students)
#footer(students)
interactive_menu

