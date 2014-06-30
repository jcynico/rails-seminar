class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :age
      t.string :address
      t.string :introduction
      t.decimal :money

      t.timestamps
    end
  end
end
