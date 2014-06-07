class ExerciseExample < ActiveRecord::Base
  belongs_to :exercise

  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "36x36#" }, :default_url => "no-image.gif"
end