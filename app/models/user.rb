class User < ApplicationRecord
  COUNTRIES =  ["France", "Morocco", "Germany", "South Africa"]
  INDUSTRIES = ["Agriculture", "Finance", "Manufacturing", "Energy", "Communications"]
  YEARS_EXPERIENCE = ["2+ years", "5+ years", "10+ years"]
  HOURS_PER_WEEK = [5, 10, 15, 20, 25, 30, 35, 40]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  mount_uploader :photo, PhotoUploader

  def userinfo
    "#{first_name} #{last_name} (#{email})"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
