class AddFreshdeskToSoftwearDeviseUsers < ActiveRecord::Migration
  def change
    add_column :softwear_devise_users, :insightly_api_key, :string
    add_column :softwear_devise_users, :freshdesk_email, :string
    add_column :softwear_devise_users, :freshdesk_password, :string
    add_column :softwear_devise_users, :encrypted_freshdesk_password, :string
    add_column :softwear_devise_users, :profile_picture_id, :integer
  end
end
