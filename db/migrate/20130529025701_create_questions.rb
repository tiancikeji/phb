class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.integer :score
      t.integer :sort

      t.timestamps
    end
  end
end
