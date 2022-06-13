class Booking < ApplicationRecord
  belongs_to :user_teacher, class_name: "User"
  belongs_to :user_student, class_name: "User"
  has_many :chatrooms, dependent: :destroy

  validates :start_time, :end_time, presence: true

  default_scope -> { order(:start_time) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end

  def multi_days?
    (end_time.to_date - start_time.to_date).to_i >= 1
  end

end
