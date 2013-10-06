User.delete_all
School.delete_all
ReportCard.delete_all
Rating.delete_all

#schools
School.create(name: "KIPP SF Bay",
 city:"San Francisco", state:"CA", grade_level:"Middle")

#Users
User.create(first_name: 'Annie', last_name: 'Lin', type: 'SuperAdmin', school_id: 1, grade_level: '0', id_number: 1111, email: 'annie@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Anil', last_name: 'Bridgpal', type: 'Teacher', school_id: 1, grade_level: '7', id_number: 2222, email: 'anil@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Jackie', last_name: 'Herrlin', type: 'Teacher', school_id: 1, grade_level: '7', id_number: 3333, email: 'jackie@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Alex', last_name: 'Altair', type: 'Student', school_id: 1, grade_level: '0', id_number: 4444, email: 'alex@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')

alex = Student.first
anil = Teacher.first
jackie = Teacher.last

#ReportCard
alex_reportcard = ReportCard.create(quarter: 1, year: 2013, student: alex)

#Rating
Rating.create(
             author:               alex,
             report_card:          alex_reportcard,
             grit:                 5,
             zest:                 5,
             school_work:          5,
             interpersonal:        5,
             optimism:             2,
             gratitude:            3,
             social_intelligence:  4,
             curiosity:            2
             )

Rating.create(
             author:               anil,
             report_card:          alex_reportcard,
             grit:                 4,
             zest:                 4,
             school_work:          5,
             interpersonal:        5,
             optimism:             3,
             gratitude:            3,
             social_intelligence:  4,
             curiosity:            3
             )

Rating.create(
             author:               jackie,
             report_card:          alex_reportcard,
             grit:                 3,
             zest:                 5,
             school_work:          5,
             interpersonal:        3,
             optimism:             5,
             gratitude:            2,
             social_intelligence:  4,
             curiosity:            3
             )