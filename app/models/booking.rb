class Booking < ApplicationRecord
  belongs_to :user_teacher, class_name: "User"
  belongs_to :user_student, class_name: "User"
end
