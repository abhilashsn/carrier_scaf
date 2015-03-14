class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :answers
      t.string :is_correct_answer

      t.timestamps null: false
    end
  end
end
