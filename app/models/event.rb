class Event < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
<<<<<<< HEAD
  mount_uploader :avatar, AvatarUploader

=======
=======
  has_many :comments
  has_many :attendances, dependent: :destroy
  has_many :participants, through: :attendances, source: :user
>>>>>>> event_page
  mount_uploader :image, ImageUploader
  # default_scope -> { order(created_at: :desc) }
>>>>>>> event_page
  with_options presence: true do
    validates :title
    validates :user_id
  end
end
