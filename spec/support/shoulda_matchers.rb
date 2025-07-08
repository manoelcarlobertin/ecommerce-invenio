require 'shoulda/matchers'

RSpec.configure do |config|
  Shoulda::Matchers.configure do |conf|
    conf.integrate do |with|
      # Enable support for Rails testing
      with.test_framework :rspec

      # Enable all libraries for testing
      with.library :rails
      with.library :active_record
      with.library :active_model
      with.library :action_controller
    end
  end
end
