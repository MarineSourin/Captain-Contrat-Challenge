class CreateBoucliers < ActiveRecord::Migration[5.2]
  def change
    create_table :boucliers do |t|
      t.string :nom
      t.integer :protection

      t.timestamps
    end
  end
end
