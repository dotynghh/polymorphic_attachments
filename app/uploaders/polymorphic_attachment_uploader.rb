# encoding: utf-8
# require 'carrierwave/processing/mime_types'

class PolymorphicAttachmentUploader < CarrierWave::Uploader::Base
  # include CarrierWave::MimeTypes
  include CarrierWave::MiniMagick

  # when adding white list type, please also add the according type cover image
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


  # # when adding white list type, please also add the according type cover image
  # FILE_EXTENSION_LIST = %w(doc docx xls xlsx pdf ppt pptx rar zip 7z)
  # IMAGE_EXTENSION_LIST = %w(jpg jpeg png gif tif tiff)
  # FILE_EXTENSION_WHITE_LIST = FILE_EXTENSION_LIST + IMAGE_EXTENSION_LIST

  # # Add a white list of extensions which are allowed to be uploaded.
  # # For images you might use something like this:
  # def extension_white_list
  #   FILE_EXTENSION_WHITE_LIST
  # end

  # # Override the filename of the uploaded files:
  # # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   original_filename
  # end

end
