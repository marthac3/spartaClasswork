class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :net_worth
      t.date :dob

      t.timestamps
    end
  end
end
