#encoding: utf-8
class Exercicio < ActiveRecord::Base
  self.table_name = :exercicios
  acts_as_paranoid

  validates_presence_of :nome, :dificuldade_exercicio_id, :tipo_exercicio_id
  validates_presence_of :grupo_muscular_id, :if => lambda { self.tipo_exercicio == 'Anaeróbico' }

  has_many :fichas_exercicios
  has_many :fichas, :through => :fichas_exercicios

  belongs_to :grupo_muscular
  belongs_to :dificuldade_exercicio, :class_name => 'DificuldadeExercicio'
  belongs_to :tipo_exercicio, :class_name => 'TipoExercicio'

  has_many :exemplos_exercicios, :class_name => 'ExemploExercicio'
  accepts_nested_attributes_for :exemplos_exercicios, :reject_if => :all_blank

  searchable do
    text :nome
    string :nome

    text :grupo_muscular do
      unless grupo_muscular.nil?
        if grupo_muscular.raiz.nil?
          grupo_muscular.nome
        else
          grupo_muscular.raiz.nome
        end
      end
    end

    text :dificuldade_exercicio do
      dificuldade_exercicio.nome unless dificuldade_exercicio.nil?
    end

    string :grupo_muscular do
      unless grupo_muscular.nil?
        if grupo_muscular.raiz.nil?
          grupo_muscular.nome
        else
          grupo_muscular.raiz.nome
        end
      end
    end

    text :grupo_muscular_derivado do
      unless grupo_muscular.nil?
        grupo_muscular.nome
      end
    end

    string :grupo_muscular_derivado do
      unless grupo_muscular.nil?
        grupo_muscular.nome
      end
    end

    string :dificuldade_exercicio do
      dificuldade_exercicio.nome unless dificuldade_exercicio.nil?
    end

    date :created_at
  end
end