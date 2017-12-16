class SupportRequest < ApplicationRecord
  belongs_to :user

  has_many :support_request_comments, dependent: :destroy
end
