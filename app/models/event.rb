class Event < ApplicationRecord
  belongs_to :user
  # default_scope -> { order(created_at: :desc) }
  with_options presence: true do
    validates :title
    validates :user_id
  end
end
