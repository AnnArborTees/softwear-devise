class AddNamesToSoftwearDeviseUsers < ActiveRecord::Migration
  def change
    add_column :softwear_devise_users, :first_name, :string
    add_column :softwear_devise_users, :last_name, :string
  end
end
