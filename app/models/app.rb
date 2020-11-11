class App < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :welcom_times, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :letters, dependent: :destroy
  has_many :saws, dependent: :destroy
  has_many :absences, dependent: :destroy
  has_many :saturday_applications, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable,
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_one_attached :image

  mount_uploader :image, ImageUploader

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |app|
      app.password = SecureRandom.urlsafe_base64
    end
  end
end
