class CreateProSantes < ActiveRecord::Migration
  def change
    create_table :pro_santes do |t|
      t.string :nom
      t.string :prenom

      t.string :specialte

      t.timestamps
    end
  end
end
