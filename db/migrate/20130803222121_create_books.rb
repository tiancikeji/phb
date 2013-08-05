class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :name
      t.string :description
      t.string :url
      t.string :cover

      t.timestamps
    end
  end
end
