class CreateArmes < ActiveRecord::Migration[5.2]
  def change
    create_table :armes do |t|
      t.string :nom
      t.integer :puissance

      t.timestamps
    end
  end
end
