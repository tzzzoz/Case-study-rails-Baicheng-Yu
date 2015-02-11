class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.integer :pro_sante_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
    end
    add_index :adresses, :pro_sante_id
  end
end
