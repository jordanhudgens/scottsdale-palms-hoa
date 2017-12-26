class Newsletter < ApplicationRecord
  belongs_to :user

  validates_presence_of :title

  mount_uploader :featured_image, ImageUploader
  mount_uploader :newsletter_file, FileUploader

  enum status: {
    draft:     0,
    published: 1,
    archived:  2,
  }
end
