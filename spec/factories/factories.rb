FactoryGirl.define do
  factory :user do
    first_name              "James"
    last_name               "Dean"
    email                   "james@james.org"
    password                "foobar"
    password_confirmation   "foobar"
    school_id               1
    type                    "Teacher"
    grade_level              7
  end
end