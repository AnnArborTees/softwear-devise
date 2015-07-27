class CreateSoftwearDeviseAssets < ActiveRecord::Migration
  def change
    create_table :softwear_devise_assets do |t|

      t.timestamps null: false
    end
  end
end
