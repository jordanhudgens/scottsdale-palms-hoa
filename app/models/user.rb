class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :newsletters, dependent: :destroy
  has_many :support_requests, dependent: :destroy
end
