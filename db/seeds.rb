School.delete_all
User.delete_all
Course.delete_all
Category.delete_all
CharStrength.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")
School.create(name: "KIPP Heartwood", city:"San Francisco", state:"CA", grade_level:"High")

#teachers (avand belongs to KIPP SF Bay)
User.create(first_name: "Avand", last_name:"Amiri", email:"avand@gmail.com", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(first_name: "Jackie", last_name:"Herrlin", email:"jackie@gmail.com", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(first_name: "Anil", last_name:"Bridpal", email:"anil@gmail.com", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 10)
User.create(first_name: "Markus", last_name:"Guehrs", email:"markus@gmail.com", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 10)

#courses (Avand's courses)
Course.create(title:"Rails 4", teacher_id:1)
Course.create(title:"RSPEC", teacher_id:1)

#students (Avand's students)
User.create(first_name: "Sharif", last_name:"Hadidi", email:"sharif@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(first_name: "Ian", last_name:"Yang", email:"ian@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(first_name: "Alex", last_name:"Altair", email:"alex@gmail.com", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10)
User.create(first_name: "Donielle", last_name:"Berg", email:"donielle@gmail.com", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10)

#Categories
Category.create(content:"Zest")
Category.create(content:"Grit")
Category.create(content:"Self Control-School Work")
Category.create(content:"Self Control-Interpersonal")
Category.create(content:"Optimism")
Category.create(content:"Gratitude")
Category.create(content:"Social Intelligence")
Category.create(content:"Curiosity")

#Character Strengths
#ZEST
CharStrength.create(content:"Actively participates", category_id:1)
CharStrength.create(content:"Shows enthusiasm", category_id:1)
CharStrength.create(content:"Invigorates others", category_id:1)
#GRIT
CharStrength.create(content:"Finishes whatever he or she begins", category_id:2)
CharStrength.create(content:"Tries very hard even after experiencing failure", category_id:2)
CharStrength.create(content:"Works independently with focus", category_id:2)
#SELF - School
CharStrength.create(content:"Comes to class prepared", category_id:3)
CharStrength.create(content:"Pays attention and resists distractions", category_id:3)
CharStrength.create(content:"Remembers and follows directions", category_id:3)
CharStrength.create(content:"Gets to work right away rather than procrastinating", category_id:3)
#SELF - Interpersonal
CharStrength.create(content:"Remains calm even when criticized or otherwise provoked", category_id:4)
CharStrength.create(content:"Allows others to speak without interruption", category_id:4)
CharStrength.create(content:"Is polite to adults and peers", category_id:4)
CharStrength.create(content:"Keeps his/her temper in check", category_id:4)
#OPTIMISM
CharStrength.create(content:"Gets over frustrations and setbacks quickly", category_id:5)
CharStrength.create(content:"Believes that effort will improve his or her future", category_id:5)
#GRATITUDE
CharStrength.create(content:"Recognizes and shows appreciation for others", category_id:6)
CharStrength.create(content:"Recognizes and shows appreciation for his/her opportunities", category_id:6)
#SOCIAL INTELLIGENCE
CharStrength.create(content:"Is able to find solutions during conflicts with others", category_id:7)
CharStrength.create(content:"Demonstrates respect for feelings of others", category_id:7)
CharStrength.create(content:"Knows when and how to include others", category_id:7)
#CURIOSITY
CharStrength.create(content:"Is eager to explore new things", category_id:8)
CharStrength.create(content:"Asks and answers questions to deepen understanding", category_id:8)
CharStrength.create(content:"Actively listens to others", category_id:8)

#ratings
#Grit rating from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:3)

#Zest ratings from Avand for Sharif
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:4)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:5)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:6)
