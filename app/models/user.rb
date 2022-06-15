class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_many :orders
  has_one_attached :photo
  # has_many :languages, through: :user_language



  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_and_languages,
  against: [ :location, :languages ],
  using: {
    tsearch: { prefix: true }
  }

end
