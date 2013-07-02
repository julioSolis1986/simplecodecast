#encoding: utf-8
class Neuromotor < ActiveRecord::Base
  self.table_name = :neuromotores

  belongs_to :avaliacao_fisica
end
