School.delete_all
User.delete_all
# Course.delete_all
Category.delete_all
CharStrength.delete_all
Rating.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")
School.create(name: "KIPP Infinity", city:"New York", state:"NY", grade_level:"Middle")

#teachers
User.create(first_name: "Avand", last_name:"Amiri", email:"avand@gmail.com", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:1111)
User.create(first_name: "Jackie", last_name:"Herrlin", email:"jackie@gmail.com", school_id: 1, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:2222)

User.create(first_name: "Anil", last_name:"Bridpal", email:"anil@gmail.com", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 10, person_id:3333, admin:true)
User.create(first_name: "Markus", last_name:"Guehrs", email:"markus@gmail.com", school_id: 2, type: "Teacher", password:"foobar", password_confirmation: "foobar", grade_level: 10, person_id:4444)


#students
User.create(first_name: "Erica", last_name:"Larson", email:"erica@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:6574)
User.create(first_name: "D'Andre", last_name:"Walker", email:"dandre@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:2454)
User.create(first_name: "Kaleena", last_name:"Sedillo", email:"kaleena@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:5434)
User.create(first_name: "Kara", last_name:"Alba", email:"kara@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:5467)
User.create(first_name: "Lauren", last_name:"Asasawa", email:"lauren@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:2354)
User.create(first_name: "Marc", last_name:"Shiamoto", email:"marc@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:1436)

User.create(first_name: "Mariah", last_name:"Erdman", email:"mariah@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:3523)
User.create(first_name: "Nancy", last_name:"Do", email:"nancy@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:1452)
User.create(first_name: "Tim", last_name:"Faust", email:"tim@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:7686)
User.create(first_name: "Won", last_name:"Kim", email:"won@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:9667)
User.create(first_name: "Zak", last_name:"Faust", email:"zak@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:3467)
User.create(first_name: "Baylee", last_name:"Feore", email:"baylee@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:2346)
User.create(first_name: "Gabe", last_name:"Dominguez", email:"gabe@gmail.com", school_id: 1, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 7, person_id:7452)


User.create(first_name: "Alex", last_name:"Altair", email:"alex@gmail.com", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10, person_id:6423)
User.create(first_name: "Ryan", last_name:"Waters", email:"ryan@gmail.com", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10, person_id:7563)
User.create(first_name: "Lior", last_name:"Bendat", email:"lior@gmail.com", school_id: 2, type: "Student", password:"foobar", password_confirmation: "foobar", grade_level: 10, person_id:5461)

#Categories
Category.create(content:"Zest")
Category.create(content:"Grit")
Category.create(content:"School Work")
Category.create(content:"Interpersonal")
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
##-----------------------------------------------------------------------------------------------------------------
##RATINGS

#Q1 ratings
#Zest rating from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:1, academic_quarter:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:2, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:3, academic_quarter:1)

#Grit ratings from Avand for Sharif
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:4, academic_quarter:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:5, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:6, academic_quarter:1)

#SELF - School ratings from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:7, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:8, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:9, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:10, academic_quarter:1)

#SELF - Interpersonal ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:11, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:12, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:13, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:14, academic_quarter:1)

#OPTIMISM ratings from Avand for Sharif
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:15, academic_quarter:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:16, academic_quarter:1)

#GRATITUDE ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:17, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:18, academic_quarter:1)

#SOCIAL INTELLIGENCE ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:19, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:20, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:21, academic_quarter:1)

#CURIOSITY ratings from Avand for Sharif
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:22, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:23, academic_quarter:1)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:24, academic_quarter:1)

#Q2 ratings ---------------------------------------------------------------------
#Zest rating from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:1, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:2, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:3, academic_quarter:2)

#Grit ratings from Avand for Sharif
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:4, academic_quarter:2)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:5, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:6, academic_quarter:2)

#SELF - School ratings from Avand for Sharif
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:7, academic_quarter:2)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:8, academic_quarter:2)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:9, academic_quarter:2)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:10, academic_quarter:2)

#SELF - Interpersonal ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:11, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:12, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:13, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:14, academic_quarter:2)

#OPTIMISM ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:15, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:16, academic_quarter:2)

#GRATITUDE ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:17, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:18, academic_quarter:2)

#SOCIAL INTELLIGENCE ratings from Avand for Sharif
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:19, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:20, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:21, academic_quarter:2)

#CURIOSITY ratings from Avand for Sharif
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:22, academic_quarter:2)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:23, academic_quarter:2)
Rating.create(number:2, rater_id:1, rater_type:"Teacher", student_id:5, char_strength_id:24, academic_quarter:2)

##Sharif Self-Assessment
##-----------------------------------------------------------------------------------------------------------------
#Q1 ratings-------------------------------------------------------------------------------------------------

#Zest - Self Sharif
Rating.create(number:1, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:1, academic_quarter:1)
Rating.create(number:1, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:2, academic_quarter:1)
Rating.create(number:1, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:3, academic_quarter:1)

#Grit  - Self Sharif
Rating.create(number:2, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:4, academic_quarter:1)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:5, academic_quarter:1)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:6, academic_quarter:1)

#SELF - School  - Self Sharif
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:7, academic_quarter:1)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:8, academic_quarter:1)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:9, academic_quarter:1)
Rating.create(number:2, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:10, academic_quarter:1)

#SELF - Interpersonal  - Self Sharif
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:11, academic_quarter:1)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:12, academic_quarter:1)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:13, academic_quarter:1)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:14, academic_quarter:1)

#OPTIMISM  - Self Sharif
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:15, academic_quarter:1)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:16, academic_quarter:1)

#GRATITUDE  - Self Sharif
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:17, academic_quarter:1)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:18, academic_quarter:1)

#SOCIAL INTELLIGENCE  - Self Sharif
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:19, academic_quarter:1)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:20, academic_quarter:1)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:21, academic_quarter:1)

#CURIOSITY  - Self Sharif
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:22, academic_quarter:1)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:23, academic_quarter:1)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:24, academic_quarter:1)

#Q2 ratings ---------------------------------------------------------------------
#Zest - Self Sharif
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:1, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:2, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:3, academic_quarter:2)

#Grit  - Self Sharif
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:4, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:5, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:6, academic_quarter:2)

#SELF - School  - Self Sharif
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:7, academic_quarter:2)
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:8, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:9, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:10, academic_quarter:2)

#SELF - Interpersonal  - Self Sharif
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:11, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:12, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:13, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:14, academic_quarter:2)

#OPTIMISM  - Self Sharif
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:15, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:16, academic_quarter:2)

#GRATITUDE  - Self Sharif
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:17, academic_quarter:2)
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:18, academic_quarter:2)

#SOCIAL INTELLIGENCE  - Self Sharif
Rating.create(number:5, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:19, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:20, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:21, academic_quarter:2)

#CURIOSITY  - Self Sharif
Rating.create(number:3, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:22, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:23, academic_quarter:2)
Rating.create(number:4, rater_id:5, rater_type:"Student", student_id:5, char_strength_id:24, academic_quarter:2)



##################################################################################################
##################################################################################################

#Q1 ratings
#Zest rating from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:1, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:2, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:3, academic_quarter:1)

#Grit ratings from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:4, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:5, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:6, academic_quarter:1)

#SELF - School ratings from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:7, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:8, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:9, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:10, academic_quarter:1)

#SELF - Interpersonal ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:11, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:12, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:13, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:14, academic_quarter:1)

#OPTIMISM ratings from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:15, academic_quarter:1)
Rating.create(number:3, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:16, academic_quarter:1)

#GRATITUDE ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:17, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:18, academic_quarter:1)

#SOCIAL INTELLIGENCE ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:19, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:20, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:21, academic_quarter:1)

#CURIOSITY ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:22, academic_quarter:1)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:23, academic_quarter:1)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:24, academic_quarter:1)

#Q2 Ratings---------------------------------------------------------

#Zest rating from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:1, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:2, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:3, academic_quarter:2)

#Grit ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:4, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:5, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:6, academic_quarter:2)

#SELF - School ratings from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:7, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:8, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:9, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:10, academic_quarter:2)

#SELF - Interpersonal ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:11, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:12, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:13, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:14, academic_quarter:2)

#OPTIMISM ratings from Avand for Dave
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:15, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:16, academic_quarter:2)

#GRATITUDE ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:17, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:18, academic_quarter:2)

#SOCIAL INTELLIGENCE ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:19, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:20, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:21, academic_quarter:2)

#CURIOSITY ratings from Avand for Dave
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:22, academic_quarter:2)
Rating.create(number:4, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:23, academic_quarter:2)
Rating.create(number:5, rater_id:1, rater_type:"Teacher", student_id:9, char_strength_id:24, academic_quarter:2)

##Dave Self-Assessment
##-----------------------------------------------------------------------------------------------------------------
#Q1 ratings-------------------------------------------------------------------------------------------------


#Zest - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:1, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:2, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:3, academic_quarter:1)

#Grit - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:4, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:5, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:6, academic_quarter:1)

#SELF - School - Self Dave
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:7, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:8, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:9, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:10, academic_quarter:1)

#SELF - Interpersonal - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:11, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:12, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:13, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:14, academic_quarter:1)

#OPTIMISM - Self Dave
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:15, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:16, academic_quarter:1)

#GRATITUDE - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:17, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:18, academic_quarter:1)

#SOCIAL INTELLIGENCE - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:19, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:20, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:21, academic_quarter:1)

#CURIOSITY - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:22, academic_quarter:1)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:23, academic_quarter:1)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:24, academic_quarter:1)

#Q2 Ratings---------------------------------------------------------

#Zest - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:1, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:2, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:3, academic_quarter:2)

#Grit - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:4, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:5, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:6, academic_quarter:2)

#SELF - School - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:7, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:8, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:9, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:10, academic_quarter:2)

#SELF - Interpersonal - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:11, academic_quarter:2)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:12, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:13, academic_quarter:2)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:14, academic_quarter:2)

#OPTIMISM - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:15, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:16, academic_quarter:2)

#GRATITUDE - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:17, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:18, academic_quarter:2)

#SOCIAL INTELLIGENCE - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:19, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:20, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:21, academic_quarter:2)

#CURIOSITY - Self Dave
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:22, academic_quarter:2)
Rating.create(number:4, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:23, academic_quarter:2)
Rating.create(number:5, rater_id:9, rater_type:"Student", student_id:9, char_strength_id:24, academic_quarter:2)
