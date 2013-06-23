class CreateEmails < ActiveRecord::Migration
  def up
  	create_table :emails do |t|
      t.string :email
      t.references :emaiable, :polymorphic => true

      t.timestamps
    end
  end

  def down
  	drop_table :emails
  end
end
