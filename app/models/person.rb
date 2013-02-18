class Person < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :video_url
end
