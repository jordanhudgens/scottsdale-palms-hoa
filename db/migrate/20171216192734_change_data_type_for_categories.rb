class ChangeDataTypeForCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :support_requests, :category, :integer
    add_column :support_requests, :request_category, :integer, default: 0
  end
end
