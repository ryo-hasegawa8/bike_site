class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :comments
  has_many :attendances, dependent: :destroy
  has_many :participants, through: :attendances, source: :user
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:twitter]

  def already_attended?(event)
    attendances.exists?(event_id: event.id)
  end
end
