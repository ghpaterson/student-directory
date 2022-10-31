student_count = 11
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
#and then we print them
puts "The sudents of the Villain Academy"
puts "-------------------"
students.each do |student|
    puts student
end
# finally we print the total
puts "Overall we have #{students.count} great students "

