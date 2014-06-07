class PhysicalAssessment < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :client
  belongs_to :anamnesis
  has_one :perimeter
  has_one :body_composition
  has_one :cardiorespiratory_assessment
  has_one :neuromotor

  accepts_nested_attributes_for :anamnesis, :reject_if => :all_blank
  accepts_nested_attributes_for :perimeter, :reject_if => :all_blank
  accepts_nested_attributes_for :body_composition, :reject_if => :all_blank
  accepts_nested_attributes_for :cardiorespiratory_assessment, :reject_if => :all_blank
  accepts_nested_attributes_for :neuromotor, :reject_if => :all_blank
end
