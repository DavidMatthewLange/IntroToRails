class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :birth_year
      t.string :gender
      t.integer :homeworld
      t.integer :species

      t.timestamps
    end
  end
end
