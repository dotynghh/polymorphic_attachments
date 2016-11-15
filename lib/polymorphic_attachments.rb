

# require "polymorphic_attachments/railtie"
require "polymorphic_attachments/version"
require "polymorphic_attachments/engine"
require "polymorphic_attachments/configration"

# require "polymorphic_attachments/railtie"

require "generators/polymorphic_attachments/install_generator"

require 'simple_form'
require 'carrierwave'
require 'mini_magick'
require 'jquery-fileupload-rails'

# ActiveRecord::Base.send :extend, PolymorphicAttachments::Acts


module PolymorphicAttachments

  p 'module polymorphic_attachments'
  NAME            = 'polymorphic attachments'
  GEM             = 'polymorphic_attachments'
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



