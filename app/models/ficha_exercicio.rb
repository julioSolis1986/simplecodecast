#encoding: utf-8
class FichaExercicio < ActiveRecord::Base
  self.table_name = :fichas_exercicios

  belongs_to :dia
  belongs_to :serie_treino, :foreign_key => 'serie_treino_id'
  belongs_to :exercicio, :foreign_key => 'exercicios_id'

  has_many :exercicios_fichas_exercicios, :foreign_key => :ficha_exercicio_id, :class_name => 'ExercicioFichaExercicio'
  accepts_nested_attributes_for :exercicios_fichas_exercicios, :reject_if => :all_blank

  has_many :repeticoes_fichas_exercicios, :foreign_key => :ficha_exercicio_id, :class_name => 'RepeticaoFichaExercicio'
  accepts_nested_attributes_for :repeticoes_fichas_exercicios, :reject_if => :all_blank
end