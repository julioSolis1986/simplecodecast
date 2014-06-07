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

      t.text :answer_1_01

      t.boolean :answer_2_01
      t.boolean :answer_2_02

      t.boolean :answer_3_01
      t.boolean :answer_3_02
      t.boolean :answer_3_03
      t.boolean :answer_3_04
      t.boolean :answer_3_05
      t.boolean :answer_3_06
      t.boolean :answer_3_07
      t.references :physical_assessment

      t.timestamps
    end
  end
end
