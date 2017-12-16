class SupportRequest < ApplicationRecord
  belongs_to :user

  has_many :support_request_comments, dependent: :destroy

  validates_presence_of :title, :content

  enum status: {
    unresolved: 0,
    resolved:   1,
  }

  enum request_category: {
    general_inquiry:   0,
    repair_request:    1,
    policy_violation:  2,
    landscaping_issue: 3,
  }
end
