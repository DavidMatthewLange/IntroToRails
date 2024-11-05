class AddApiIdToSpecies < ActiveRecord::Migration[7.2]
  def change
    add_column :species, :api_id, :string
  end
end
