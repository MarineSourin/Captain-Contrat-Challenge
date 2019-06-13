class AddResultsToJoueurs < ActiveRecord::Migration[5.2]
  def change
    add_column :joueurs, :result, :string
  end
end
