class Tag < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :tageable, :polymorphic => true
end
