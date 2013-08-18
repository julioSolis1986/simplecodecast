#encoding: utf-8
class TipoExercicio < ActiveRecord::Base
  self.table_name = :tipos_exercicios

  acts_as_paranoid
end
