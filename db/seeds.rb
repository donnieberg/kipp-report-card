User.delete_all
School.delete_all
ReportCard.delete_all
Rating.delete_all

#schools
School.create(name: "KIPP SF Bay", city:"San Francisco", state:"CA", grade_level:"Middle")

#Users
#SuperAdmin
User.create(first_name: 'Alex', last_name: 'Altair', type: 'Super', school_id: 1, grade_level: 0, id_number: 1111, email: 'alex@gmail.com', password: 'lambda', password_confirmation: 'lambda')
