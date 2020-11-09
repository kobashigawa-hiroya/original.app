class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # thumb バージョン(width 400px x height 200px)
  version :thumb do
    process :resize_to_fit => [400, 200]
  end
  # 許可する画像の拡張子
  def extension_white_list
    %W[jpg jpeg gif png]
  end

  def default_url(*args)
    "no image.jpg"
  end

  # 変換したファイルのファイル名の規則
  def filename
    super.chomp(File.extname(super)) + ".jpg" if original_filename.present?
  end

  protected

  def secure_token
    var = "@#{mounted_as}_secure_token"
    model.instance_variable(var) or model.instance_variable_set(var, secureRandom.uuid) #公式に書いてあるのを持ってきている
  end
end
