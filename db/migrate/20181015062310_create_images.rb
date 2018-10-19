class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :isbn
      t.string :language
      t.string :date
      t.string :count
      t.text :script
      t.string :link
      t.string :image_link
      t.string :new

      t.timestamps
    end
  end
end
