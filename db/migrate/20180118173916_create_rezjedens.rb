class CreateRezjedens < ActiveRecord::Migration[5.1]
  def change
    create_table :rezjedens do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
