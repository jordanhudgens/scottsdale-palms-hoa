class SupportRequest < ApplicationRecord
  belongs_to :user

  has_many :support_request_comments, dependent: :destroy

  validates_presence_of :title, :content, :category

  enum status: {
    unresolved: 0,
    resolved:   1,
  }
end
