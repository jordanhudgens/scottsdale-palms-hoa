class FileUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(pdf doc docx)
  end
end
