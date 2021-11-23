class AddUserTypeToClientUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :client_users, :user_type, :string
  end
end
