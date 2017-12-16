class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :post_thumb do
    process resize_to_fit: [250, 150]
  end

  version :feature_thumb do
    process resize_to_fit: [660, 453]
  end

  version :guide_thumb do
    process resize_to_fit: [400, 225]
  end

  version :user_profile_thumb do
    process resize_to_fit: [58, 58]
  end

  version :user_nav_thumb do
    process resize_to_fit: [39, 39]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
