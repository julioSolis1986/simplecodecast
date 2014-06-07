class Perimeter < ActiveRecord::Base
  belongs_to :physical_assessment
  has_many :assessment_perimeters
  accepts_nested_attributes_for :assessment_perimeters, :reject_if => :all_blank

  after_initialize :build_perimeters

  def build_perimeters
    if self.assessment_perimeters.blank?
      self.assessment_perimeters.build(:type => '1', :name => 'Tórax')
      self.assessment_perimeters.build(:type => '1', :name => 'Cintura')
      self.assessment_perimeters.build(:type => '1', :name => 'Abdomen')
      self.assessment_perimeters.build(:type => '1', :name => 'Quadril')

      self.assessment_perimeters.build(:type => '2', :name => 'Antebraço')
      self.assessment_perimeters.build(:type => '2', :name => 'Braço')
      self.assessment_perimeters.build(:type => '2', :name => 'Coxa')
      self.assessment_perimeters.build(:type => '2', :name => 'Panturrilha')
    end
  end
end
