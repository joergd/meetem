class Person < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :video_embed_code, :phone_number

  validates :email, presence: true, uniqueness: true 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, length: { minimum: 10 }
  validates :description, presence: true
  validates :video_embed_code, presence: true

  def name
    "#{first_name} #{last_name}".downcase.titleize
  end
end
