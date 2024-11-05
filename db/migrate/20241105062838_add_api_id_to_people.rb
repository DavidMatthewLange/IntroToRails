class AddApiIdToPeople < ActiveRecord::Migration[7.2]
  def change
    add_column :people, :api_id, :string
  end
end
