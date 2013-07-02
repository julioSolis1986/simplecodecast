#encoding: utf-8
class ComposicaoCorporal < ActiveRecord::Base
  self.table_name = :composicoes_corporais

  belongs_to :avaliacao_fisica
end
