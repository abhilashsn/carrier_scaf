class CreateSeta < ActiveRecord::Migration
  def change
    create_table :seta do |t|
      t.string :name
      t.time :time_limit
      t.text :description
      t.boolean :is_active
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
