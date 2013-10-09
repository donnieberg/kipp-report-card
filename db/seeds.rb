User.delete_all
School.delete_all
ReportCard.delete_all
Rating.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")
School.create(name: "KIPP Bridge", city:"Oakland", state:"CA", grade_level:"Middle")

#Users
User.create(first_name: 'Annie', last_name: 'Lin', type: 'SuperAdmin', school_id: 1, grade_level: '0', id_number: 1111, email: 'annie@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Anil', last_name: 'Bridgpal', type: 'Teacher', school_id: 1, grade_level: '7', id_number: 2222, email: 'anil@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Jackie', last_name: 'Herrlin', type: 'Teacher', school_id: 1, grade_level: '7', id_number: 3333, email: 'jackie@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Alex', last_name: 'Altair', type: 'Student', school_id: 1, grade_level: '7', id_number: 4444, email: 'alex@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')

anil = Teacher.first
jackie = Teacher.last
alex = Student.first

#ReportCard
alex_reportcard1 = ReportCard.create(quarter: 1, year: 2013, student: alex)
alex_reportcard2 = ReportCard.create(quarter: 2, year: 2013, student: alex)
alex_reportcard3 = ReportCard.create(quarter: 3, year: 2013, student: alex)
alex_reportcard4 = ReportCard.create(quarter: 4, year: 2013, student: alex)

#Rating
Rating.create(
             author:               alex,
             report_card:          alex_reportcard1,
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
             report_card:          alex_reportcard1,
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
             report_card:          alex_reportcard1,
             grit:                 3,
             zest:                 5,
             school_work:          5,
             interpersonal:        3,
             optimism:             5,
             gratitude:            2,
             social_intelligence:  4,
             curiosity:            3
             )

Rating.create(
             author:               alex,
             report_card:          alex_reportcard2,
             grit:                 2,
             zest:                 1,
             school_work:          4,
             interpersonal:        3,
             optimism:             2,
             gratitude:            5,
             social_intelligence:  4,
             curiosity:            2
             )

Rating.create(
             author:               anil,
             report_card:          alex_reportcard2,
             grit:                 3,
             zest:                 4,
             school_work:          3,
             interpersonal:        3,
             optimism:             5,
             gratitude:            4,
             social_intelligence:  4,
             curiosity:            3
             )

Rating.create(
             author:               jackie,
             report_card:          alex_reportcard2,
             grit:                 3,
             zest:                 2,
             school_work:          3,
             interpersonal:        5,
             optimism:             3,
             gratitude:            2,
             social_intelligence:  4,
             curiosity:            3
             )

Rating.create(
             author:               alex,
             report_card:          alex_reportcard3,
             grit:                 4,
             zest:                 4,
             school_work:          4,
             interpersonal:        3,
             optimism:             2,
             gratitude:            2,
             social_intelligence:  4,
             curiosity:            4
             )

Rating.create(
             author:               anil,
             report_card:          alex_reportcard3,
             grit:                 5,
             zest:                 3,
             school_work:          4,
             interpersonal:        4,
             optimism:             3,
             gratitude:            4,
             social_intelligence:  2,
             curiosity:            3
             )

Rating.create(
             author:               jackie,
             report_card:          alex_reportcard3,
             grit:                 3,
             zest:                 2,
             school_work:          4,
             interpersonal:        4,
             optimism:             3,
             gratitude:            3,
             social_intelligence:  5,
             curiosity:            3
             )
Rating.create(
             author:               alex,
             report_card:          alex_reportcard4,
             grit:                 2,
             zest:                 3,
             school_work:          4,
             interpersonal:        3,
             optimism:             3,
             gratitude:            5,
             social_intelligence:  4,
             curiosity:            2
             )

Rating.create(
             author:               anil,
             report_card:          alex_reportcard4,
             grit:                 4,
             zest:                 4,
             school_work:          3,
             interpersonal:        3,
             optimism:             5,
             gratitude:            4,
             social_intelligence:  5,
             curiosity:            3
             )

Rating.create(
             author:               jackie,
             report_card:          alex_reportcard4,
             grit:                 4,
             zest:                 3,
             school_work:          4,
             interpersonal:        5,
             optimism:             3,
             gratitude:            4,
             social_intelligence:  4,
             curiosity:            3
             )

