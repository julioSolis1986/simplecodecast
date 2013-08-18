#encoding: utf-8
class SerieTreino < ActiveRecord::Base
  self.table_name = :series_treinos

  belongs_to :ficha

  has_many :fichas_exercicios, :class_name => 'FichaExercicio', :foreign_key => 'serie_treino_id'
  accepts_nested_attributes_for :fichas_exercicios, :reject_if => :all_blank
end