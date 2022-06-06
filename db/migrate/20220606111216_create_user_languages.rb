class CreateUserLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :user_languages do |t|
      t.integer :language_id
      t.integer :user_id
      t.references :user, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
