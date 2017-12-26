class AddFeaturedImageToNewsletters < ActiveRecord::Migration[5.1]
  def change
    add_column :newsletters, :featured_image, :text
  end
end
