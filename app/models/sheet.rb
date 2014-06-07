class Sheet < ActiveRecord::Base
  has_many :training_series
  accepts_nested_attributes_for :training_series, :reject_if => :all_blank
end