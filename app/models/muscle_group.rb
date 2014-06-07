class MuscleGroup < ActiveRecord::Base
  acts_as_paranoid

  scope :root, where(:muscle_groups_id => nil)

  has_many :derivatives, :class_name => 'MuscleGroup', :foreign_key => :muscle_groups_id
  accepts_nested_attributes_for :derivatives, :reject_if => :all_blank

  belongs_to :root, :class_name => 'MuscleGroup', :foreign_key => :muscle_groups_id
end
