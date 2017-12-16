class Newsletter < ApplicationRecord
  belongs_to :user

  validates_presence_of :title

  enum status: {
    draft:     0,
    published: 1,
    archived:  2,
  }
end
