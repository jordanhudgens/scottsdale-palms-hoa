class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :newsletters, dependent: :destroy
  has_many :support_requests, dependent: :destroy
  has_many :support_request_comments, dependent: :destroy

  enum role: {
    standard: 0,
    admin:    0,
  }
end
