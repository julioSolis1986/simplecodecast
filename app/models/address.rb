class Address < ActiveRecord::Base
  attr_accessible :neighbourhood, :postal_code, :city_id, :complement, :street, :number, :state_id, :country

  belongs_to :city
  belongs_to :state

  scope :uniquely_street, group(:street)
  scope :uniquely_neighbourhood, group(:neighbourhood)

  validates_presence_of :street, :number, :neighbourhood, :city_id, :state_id, :country
end
