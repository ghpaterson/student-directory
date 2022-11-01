@students = []

def input_students
puts "Please enter the names of the students"
puts "To finish, just hit enter twice"

@students = []
name = gets.chomp
		
		while !name.empty? do		#saying while name isnt empty continue to input more names
				@students << {name: name, cohort: :november}
				puts "We now have #{@students.count} students"
				name = gets.chomp

		end
		@students
end

#Im going to create methods here

def header
	puts "The sudents of the Villain Academy"
	puts "-------------------"
end

def print_student_list
	@students.each do |student|
			puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def footer
		puts "Overall we have #{@students.count} great students "
end

def print_menu
	puts "1. Input the students"
	puts "2. Show list of the students"
	puts "3. Save the list to students.csv"
	puts "9. Exit"
end

def show_students
	header
	print_student_list
	footer
end

def process(selection)
		case selection
		when "1"
				input_students
		when "2"
				show_students
		when "3"
				save_students
		when "9"
				exit
		else
				puts "I dont know what you mean, try again."
		end
end

def save_students
		file = File.open("students.csv", "w")
		@students.each do |student|
				student_data =[student[:name], student[:cohort]]
				csv_line = student_data.join(",")
				file.puts csv_line
		end
		file.close
	end

def interactive_menu
		loop do
			print_menu
			process(gets.chomp)
		end
end

#nothing will happen until I call the methods
#students = input_students
#header
#print_student_list(students)
#footer(students)
interactive_menu

