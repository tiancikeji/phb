class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :lat
      t.string :lng
      t.string :phone
      t.string :address
      t.string :user_comment
      t.text :description

      t.timestamps
    end
  end
end
