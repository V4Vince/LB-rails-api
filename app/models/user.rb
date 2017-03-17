class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :contacts
  has_many :blogs
  has_many :videos
  has_one :profile


end
