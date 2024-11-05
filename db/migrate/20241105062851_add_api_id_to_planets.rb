class AddApiIdToPlanets < ActiveRecord::Migration[7.2]
  def change
    add_column :planets, :api_id, :string
  end
end
