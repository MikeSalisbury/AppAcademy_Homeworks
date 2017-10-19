class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :house_id
      t.timestamps
    end
  end
end
