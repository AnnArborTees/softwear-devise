class AddAuthenticationTokenToSoftwearDeviseUsers < ActiveRecord::Migration
  def change
    add_column :softwear_devise_users, :authentication_token, :string
    add_index :softwear_devise_users, :authentication_token
  end
end
