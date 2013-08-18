#encoding: utf-8
class Ficha < ActiveRecord::Base
  self.table_name = :fichas

  has_many :series_treinos, :class_name => 'SerieTreino', :foreign_key => 'ficha_id'
  # has_many :exercicios, :through => :fichas_exercicios

  accepts_nested_attributes_for :series_treinos, :reject_if => :all_blank
  # accepts_nested_attributes_for :exercicios, :reject_if => :all_blank
end