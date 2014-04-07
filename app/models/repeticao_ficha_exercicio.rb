#encoding: utf-8
class RepeticaoFichaExercicio < ActiveRecord::Base
  self.table_name = :repeticoes_fichas_exercicios

  belongs_to :ficha_exercicio, :class_name => 'FichaExercicio'
end