class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :text
      t.integer :salary
      t.integer :transfer
      t.integer :time
      t.integer :amount_time
      t.integer :amount_money

      t.timestamps
    end
  end
end
