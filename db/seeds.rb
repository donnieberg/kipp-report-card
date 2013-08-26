School.delete_all
User.delete_all
Course.delete_all
Category.delete_all
Char_strength.delete_all


#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")
School.create(name: "KIPP Heartwood", city:"San Francisco", state:"CA", grade_level:"High")

#teachers
User.create(name: "Avand", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Jackie", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Anil", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar")
User.create(name: "Markus", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar")

#courses
Course.create(title:"Rails 4", teacher_id:1)

#students
User.create(name: "Sharif", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(name: "Ian", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7)
User.create(name: "Alex", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10)
User.create(name: "Donielle", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10)




