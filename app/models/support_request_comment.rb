class SupportRequestComment < ApplicationRecord
  belongs_to :support_request
  belongs_to :user
end
