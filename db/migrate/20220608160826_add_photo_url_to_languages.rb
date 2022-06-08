class AddPhotoUrlToLanguages < ActiveRecord::Migration[7.0]
  def change
    add_column :languages, :photo_url, :string
  end
end
