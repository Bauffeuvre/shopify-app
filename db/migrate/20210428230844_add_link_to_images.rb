class AddLinkToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :img_link, :string
  end
end
