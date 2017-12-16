class CreateSupportRequestComments < ActiveRecord::Migration[5.1]
  def change
    create_table :support_request_comments do |t|
      t.references :support_request, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
