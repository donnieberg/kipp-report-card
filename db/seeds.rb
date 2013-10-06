User.delete_all
School.delete_all
ReportCard.delete_all
Rating.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")

#Users
User.create(first_name: 'Annie', last_name: 'Lin', type: 'Super', school_id: 1, grade_level: '0', id_number: 1111, email: 'annie@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Anil', last_name: 'Bridgpal', type: 'Teacher', school_id: 1, grade_level: '7', id_number: 2222, email: 'anil@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create(first_name: 'Alex', last_name: 'Altair', type: 'Student', school_id: 1, grade_level: '0', id_number: 3333, email: 'alex@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
