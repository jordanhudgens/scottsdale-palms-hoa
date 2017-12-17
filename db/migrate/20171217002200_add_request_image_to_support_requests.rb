class AddRequestImageToSupportRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :support_requests, :request_image, :text
  end
end
