
#Im going to create a hash here 
students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddie Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]
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
header
print(students)
footer(students)

