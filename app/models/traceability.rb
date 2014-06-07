class Traceability < ActiveRecord::Base
  attr_accessible :action, :message

  belongs_to :user
end
