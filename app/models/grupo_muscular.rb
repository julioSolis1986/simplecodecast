#encoding: utf-8
class GrupoMuscular < ActiveRecord::Base
  self.table_name = :grupos_musculares
  acts_as_paranoid

  scope :raiz, where(:grupos_musculares_id => nil)

  has_many :derivados, :class_name => 'GrupoMuscular', :foreign_key => :grupos_musculares_id
  accepts_nested_attributes_for :derivados, :reject_if => :all_blank

  belongs_to :raiz, :class_name => 'GrupoMuscular', :foreign_key => :grupos_musculares_id
end
