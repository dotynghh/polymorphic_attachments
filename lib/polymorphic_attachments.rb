require "polymorphic_attachments/version"
require "polymorphic_attachments/engine"
require "polymorphic_attachments/configration"

require "generators/polymorphic_attachments/install_generator"

require 'simple_form'
require 'carrierwave'
require 'mini_magick'
require 'jquery-fileupload-rails'

module PolymorphicAttachments

  NAME = 'polymorphic attachments'
  GEM  = 'polymorphic_attachments'
  class << self
    def config
      return @config if defined?(@config)
      @config = Configuration.new
      @config.limit_number = 3
      @config
    end

    def configure(&block)
      config.instance_exec(&block)
    end

  end

end



