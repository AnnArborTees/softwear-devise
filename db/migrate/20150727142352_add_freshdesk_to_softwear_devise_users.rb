class AddFreshdeskToSoftwearDeviseUsers < ActiveRecord::Migration
  def change
    add_column :softwear_devise_users, :insightly_api_key, :string
    add_column :softwear_devise_users, :freshdesk_password, :string
    add_column :softwear_devise_users, :encrypted_freshdesk_password, :string
    add_column :softwear_devise_users, :profile_picture_id, :integer
    add_column :softwear_devise_users, :shiftplanning_employee_id, :integer
    add_column :softwear_devise_users, :shiftplanning_token, :string
  end
end
