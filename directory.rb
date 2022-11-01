
#lets put all the students into an array
students = [
["Dr. Hannibal Lecter", :november],
["Darth Vader", :november],
["Nurse Ratched", :november],
["Michael Corleone", :november],
["Alex DeLarge", :november],
["The Wicked Witch of the West", :november],
["Terminator", :november],
["Freddie Krueger", :november],
["The Joker", :november],
["Joffrey Baratheon", :november],
["Norman Bates", :november]
]
#Im going to create methods here

def header
		puts "The sudents of the Villain Academy"
  puts "-------------------"
end

def print(students)
		students.each do |student|
  		puts "#{student[0]} (#{student[1]} cohort)"
		end
end

def footer(students)
		puts "Overall we have #{students.count} great students "
end

#nothing will happen until I call the methods
header
print(students)
footer(students)

