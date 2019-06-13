class CreateArmes < ActiveRecord::Migration[5.2]
  def change
    create_table :armes do |t|

      t.timestamps
    end
  end
end
