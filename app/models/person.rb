class Person < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :video_url

  validates :email, presence: true, uniqueness: true 
  validates :first_name, presence: true
  validates :last_name, presence: true

  def name
    "#{first_name} #{last_name}".downcase.titleize
  end
end
