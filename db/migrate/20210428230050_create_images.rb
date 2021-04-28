class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name
      t.integer :rating
      t.string :category
      t.string :legend

      t.timestamps
    end
  end
end
