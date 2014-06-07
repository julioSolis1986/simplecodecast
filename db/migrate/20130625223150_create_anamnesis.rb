class CreateAnamnesis < ActiveRecord::Migration
  def change
    create_table :anamnesis do |t|
      t.string :question_1_01

      t.string :question_2_01
      t.string :question_2_02

      t.string :question_3_01
      t.string :question_3_02
      t.string :question_3_03
      t.string :question_3_04
      t.string :question_3_05
      t.string :question_3_06
      t.string :question_3_07

      t.text :question_1_01

      t.boolean :question_2_01
      t.boolean :question_2_02

      t.boolean :question_3_01
      t.boolean :question_3_02
      t.boolean :question_3_03
      t.boolean :question_3_04
      t.boolean :question_3_05
      t.boolean :question_3_06
      t.boolean :question_3_07
      t.references :physical_assessments

      t.timestamps
    end
  end
end
