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
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
