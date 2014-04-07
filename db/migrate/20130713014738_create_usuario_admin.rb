class CreateUsuarioAdmin < ActiveRecord::Migration
  def change
    Usuario.create!({:email => "admin@admin.com",
                  :nome => "Admin",
                  :password => "123456", 
                  :password_confirmation => "123456" })
  end
end
