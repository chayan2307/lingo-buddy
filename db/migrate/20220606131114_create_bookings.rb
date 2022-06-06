class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      # t.references :user_teacher, null: false, foreign_key: { to_table: :users }
      # t.references :user_student, null: false, foreign_key: { to_table: :users }
      t.references :user_teacher
      t.references :user_student

      t.timestamps
    end

    add_foreign_key :bookings, :users, column: :user_teacher_id, primary_key: :id
    add_foreign_key :bookings, :users, column: :user_student_id, primary_key: :id

  end
end
