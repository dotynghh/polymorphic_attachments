class PolymorphicAttachment < ActiveRecord::Base
  # acts_as_cached(:version => 2, :expires_in => 1.week)

  belongs_to :polymorphic_attachmentable, polymorphic: true, optional: true

  # validates :attachment_file, :presence => true

  mount_uploader :attachment_file, PolymorphicAttachmentUploader

  def to_jq_upload
    {
      "name" => read_attribute(:attachment_file),
      "size" => attachment_file.size,
      "thumb_url" => thumbnail_url,
      "url" => url,
      "asset_id" => id,
      "filename" => filename,
      "type" => attachment_file.file.extension
    }


  end
  # def image?
  #   File.extname(file_name).downcase.in?(['.png', '.jpg', 'jpeg'])
  # end

  def filename
    attachment_file.file.original_filename if attachment_file.file
  end

  def url
    attachment_file.url
  end

  def thumbnail_url
    attachment_file.thumbnail_url
  end

  # def thumbnail_url_without_asset_path
  #   attachment_file.thumbnail_url_without_asset_path
  # end

  # def self.return_word
  #   'hello world'
  # end

end
