#encoding: utf-8
class Perimetro < ActiveRecord::Base
  belongs_to :avaliacao_fisica
  has_many :avaliacao_perimetro, :foreign_key => :perimetros_id

  def build_perimetros
    if self.new_record?
      self.avaliacao_perimetro.build(:tipo => '1', :nome => 'Tórax')
      self.avaliacao_perimetro.build(:tipo => '1', :nome => 'Cintura')
      self.avaliacao_perimetro.build(:tipo => '1', :nome => 'Abdomen')
      self.avaliacao_perimetro.build(:tipo => '1', :nome => 'Quadril')

      self.avaliacao_perimetro.build(:tipo => '2', :nome => 'Antebraço')
      self.avaliacao_perimetro.build(:tipo => '2', :nome => 'Braço')
      self.avaliacao_perimetro.build(:tipo => '2', :nome => 'Coxa')
      self.avaliacao_perimetro.build(:tipo => '2', :nome => 'Panturrilha')
    end
  end
end
