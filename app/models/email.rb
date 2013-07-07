class Email < ActiveRecord::Base
  attr_accessible :email

  validates_presence_of :email
  validates_length_of :email, :minimum => 30
end
