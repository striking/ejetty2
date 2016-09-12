class CreateBerths < ActiveRecord::Migration[5.0]
  def change
    create_table :berths do |t|
      t.text :description
      t.boolean :power
      t.boolean :water
      t.integer :max_length
      t.integer :max_width
      t.boolean :bridge

      t.timestamps
    end
  end
end
