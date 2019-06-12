class CreateCombats < ActiveRecord::Migration[5.2]
  def change
    create_table :combats do |t|

      t.timestamps
    end
  end
end
