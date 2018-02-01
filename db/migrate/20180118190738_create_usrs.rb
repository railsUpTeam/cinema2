class CreateUsrs < ActiveRecord::Migration[5.1]
  def change
    create_table :usrs do |t|
      t.string :Imie
      t.string :nazwisko
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
