class CreatePageSections < ActiveRecord::Migration
  def change
    create_table :page_sections do |t|
      t.integer :page_id
      t.string :name
      t.string :index

      t.timestamps
    end
  end
end
