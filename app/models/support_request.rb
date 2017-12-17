class SupportRequest < ApplicationRecord
  belongs_to :user

  has_many :support_request_comments, dependent: :destroy

  validates_presence_of :title, :content

  mount_uploader :request_image, ImageUploader

  def self.by_latest
    order('updated_at DESC')
  end

  enum status: {
    unresolved:  0,
    in_progress: 1,
    resolved:    2,
  }

  enum request_category: {
    general_inquiry:   0,
    repair_request:    1,
    policy_violation:  2,
    landscaping_issue: 3,
  }
end
