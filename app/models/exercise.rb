class Exercise < ActiveRecord::Base
  acts_as_paranoid

  validates_presence_of :name, :difficulty_exercises_id, :exercise_types_id
  validates_presence_of :muscle_groups_id, :if => lambda { self.exercise_type == 'Anaeróbico' }

  has_many :exercise_sheets
  has_many :sheets, :through => :exercise_sheets

  belongs_to :muscle_group
  belongs_to :difficulty_exercise
  belongs_to :exercise_type

  has_many :exercise_examples
  accepts_nested_attributes_for :exercise_examples, :reject_if => :all_blank

  searchable do
    text :name
    string :name

    text :muscle_group do
      unless muscle_group.nil?
        if muscle_group.root.nil?
          muscle_group.name
        else
          muscle_group.root.name
        end
      end
    end

    text :difficulty_exercise do
      difficulty_exercise.name unless difficulty_exercise.nil?
    end

    string :muscle_group do
      unless muscle_group.nil?
        if muscle_group.root.nil?
          muscle_group.name
        else
          muscle_group.root.name
        end
      end
    end

    text :muscle_group_derivative do
      unless muscle_group.nil?
        muscle_group.name
      end
    end

    string :muscle_group_derivative do
      unless muscle_group.nil?
        muscle_group.name
      end
    end

    string :difficulty_exercise do
      difficulty_exercise.name unless difficulty_exercise.nil?
    end

    date :created_at
  end
end