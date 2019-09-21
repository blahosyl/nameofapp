class AddAdminFlagToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false, null: false #make sure it defaults to "false" and that it can’t be "nil"
  end
end
