class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default:true, null:false
  end
end