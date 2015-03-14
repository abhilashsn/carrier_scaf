class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :description
      t.integer :question_type
      t.integer :display_order
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
