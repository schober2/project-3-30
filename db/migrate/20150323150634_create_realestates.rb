class CreateRealestates < ActiveRecord::Migration
  def change
    create_table :realestates do |t|
      t.text :address
      t.integer :price
      t.integer :sqfootage
      t.integer :bed
      t.integer :bath
      t.integer :constructed
      t.boolean :forsale

      t.timestamps null: false
    end
  end
end
