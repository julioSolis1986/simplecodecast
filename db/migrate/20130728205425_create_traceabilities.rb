class CreateTraceabilities < ActiveRecord::Migration
  def change
    create_table :traceabilities do |t|
      t.references :traceable, :polymorphic => true
      t.references :user
      
      t.string :action
      t.text :message

      t.timestamps
    end
  end
end
