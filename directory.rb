
#lets put all the students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddie Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
#Im going to create methods here

def header
		puts "The sudents of the Villain Academy"
  puts "-------------------"
end

def print(names)
		names.each do |name|
  		puts name
		end
end

def footer(names)
	puts "Overall we have #{names.count} great students "
end

header
print(students)
footer(students)

