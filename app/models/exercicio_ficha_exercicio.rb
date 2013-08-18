#encoding: utf-8
class ExercicioFichaExercicio < ActiveRecord::Base
  self.table_name = :exercicios_fichas_exercicios

  belongs_to :ficha_exercicio
  belongs_to :exercicio
end