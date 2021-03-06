module Crom
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_crom_runner
      template 'script', 'script/crom'
      chmod 'script/crom', 0755
    end

    def create_schedule_file
      template 'schedule.rb', 'config/schedule.rb'
    end
  end
end # module Crom
