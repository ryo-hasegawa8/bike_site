class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :attendances, dependent: :destroy
  has_many :participants, through: :attendances, source: :user
  mount_uploader :image, ImageUploader
  with_options presence: true do
    validates :title
    validates :user_id
  end
end
