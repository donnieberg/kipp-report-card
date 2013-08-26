School.delete_all
User.delete_all
Course.delete_all
Category.delete_all
CharStrength.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")
School.create(name: "KIPP Heartwood", city:"San Francisco", state:"CA", grade_level:"High")

#teachers (avand belongs to KIPP SF Bay)
User.create(name: "Avand", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Jackie", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Anil", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Markus", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar")

#courses (Avand's courses)
Course.create(title:"Rails 4", teacher_id:1)
Course.create(title:"RSPEC", teacher_id:1)

#students (Avand's students)
User.create(name: "Sharif", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, course_id:1)
User.create(name: "Ian", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, course_id:1)
User.create(name: "Alex", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10, course_id:2)
User.create(name: "Donielle", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10, course_id:2)

#Categories
Category.create(content:"Grit")
Category.create(content:"Zest")

#Character Strengths
CharStrength.create(content:"Finishes whatever he or she begins", category_id:1)
CharStrength.create(content:"Tries very hard even after experiencing failure", category_id:1)
CharStrength.create(content:"Works independently with focus", category_id:1)
CharStrength.create(content:"Actively participates", category_id:2)
CharStrength.create(content:"Shows enthusiasm", category_id:2)
CharStrength.create(content:"Invigorates others", category_id:2)

#ratings
#Grit rating from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:3)

#Zest ratings from Avand for Sharif
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:4)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:5)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:6)
