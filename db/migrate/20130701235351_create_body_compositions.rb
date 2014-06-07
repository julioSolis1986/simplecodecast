class CreateBodyCompositions < ActiveRecord::Migration
  def change
    create_table :body_compositions do |t|
      t.references :physical_assessments

      t.string :protocol

      t.decimal :weight, :precision => 10, :scale => 4
      t.decimal :height, :precision => 10, :scale => 4

      t.decimal :tricep, :precision => 10, :scale => 4
      t.decimal :subscapular, :precision => 10, :scale => 4
      t.decimal :chest, :precision => 10, :scale => 4
      t.decimal :midaxillary, :precision => 10, :scale => 4
      t.decimal :suprailiac, :precision => 10, :scale => 4
      t.decimal :abdominal, :precision => 10, :scale => 4
      t.decimal :thigh, :precision => 10, :scale => 4

      t.timestamps
    end
  end
end
