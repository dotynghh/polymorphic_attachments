require 'rails/generators'
module PolymorphicAttachments
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "install basic files"
      source_root File.expand_path("../templates", __FILE__)


      def add_initializer
        path = "#{Rails.root}/config/initializers/polymorphic_attachments.rb"
        if File.exists?(path)
          puts "Skipping config/initializers/polymorphic_attachments.rb creation, as file already exists!"
        else
          puts "Adding polymorphic_attachments initializer (config/initializers/polymorphic_attachments.rb)..."
          template "config/initializers/polymorphic_attachments.rb", path
        end
      end

      def add_routes
        route 'mount PolymorphicAttachments::Engine, at: "/polymorphic_attachments"'
      end

      def add_migrations
        migration_num = Time.now.strftime("%Y%m%d%H%M%S")
        template "attachments_migration.rb", File.join('db/migrate', '', "#{migration_num}_create_polymorphic_attachments.rb")
       
      end

    end

  end

end