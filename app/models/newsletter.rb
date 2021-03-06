class Newsletter < ApplicationRecord
  belongs_to :user

  validates_presence_of :title

  mount_uploader :featured_image, ImageUploader
  mount_uploader :newsletter_file, FileUploader

  def self.by_latest
    order('created_at DESC')
  end

  enum status: {
    draft:     0,
    published: 1,
    archived:  2,
  }
end
