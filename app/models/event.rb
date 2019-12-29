class Event < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  # default_scope -> { order(created_at: :desc) }
  with_options presence: true do
    validates :title
    validates :user_id
  end
end
