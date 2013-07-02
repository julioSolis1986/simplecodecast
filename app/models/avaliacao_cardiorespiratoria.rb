#encoding: utf-8
class AvaliacaoCardiorespiratoria < ActiveRecord::Base
  self.table_name = :avaliacoes_cardiorespiratorias

  belongs_to :avaliacao_fisica
end
