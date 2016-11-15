# encoding: utf-8

class PolymorphicAttachmentUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  FILE_EXTENSION_LIST = %w(doc docx xls xlsx pdf ppt pptx rar zip 7z)
  IMAGE_EXTENSION_LIST = %w(jpg jpeg png gif tif tiff)
  FILE_EXTENSION_WHITE_LIST = FILE_EXTENSION_LIST + IMAGE_EXTENSION_LIST

  
  def thumbnail_url
    ActionController::Base.helpers.asset_path(thumbnail_url_without_asset_path)
  end

  def thumbnail_url_without_asset_path
    if FILE_EXTENSION_LIST.include?(file.extension.downcase)
      "assets/polymorphic_attachments/attachment_thumbnails/#{file.extension.downcase}.png"
    else
      'assets/polymorphic_attachments/attachment_thumbnails/image.png'
    end
  end

end
