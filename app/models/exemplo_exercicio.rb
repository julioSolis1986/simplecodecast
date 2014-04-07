#encoding: utf-8
class ExemploExercicio < ActiveRecord::Base
  self.table_name = :exemplos_exercicios

  belongs_to :exercicio

  has_attached_file :imagem, :styles => { :medium => "300x300#", :thumb => "36x36#" }, :default_url => "no-image.gif"
end