class CreatePersonnages < ActiveRecord::Migration[5.2]
  def change
    create_table :personnages do |t|
      t.string :nom
      t.integer :vie
      t.integer :attaque

      t.timestamps
    end
  end
end
