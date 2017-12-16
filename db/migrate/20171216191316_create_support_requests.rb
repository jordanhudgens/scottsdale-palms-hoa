class CreateSupportRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :support_requests do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.integer :status, default: 0
      t.string :category

      t.timestamps
    end
  end
end
