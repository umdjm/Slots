

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :fog

  include CarrierWave::MimeTypes
  process :set_content_type

  version :thumb do
    process :resize_to_fill => [200, 200]
  end
end

