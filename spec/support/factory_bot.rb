RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  # Clean database between tests using transaction strategy
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Reload factories to ensure fresh state
  config.before(:suite) do
    FactoryBot.find_definitions
    FactoryBot.reload
  end

  # Lint factories before running tests
  config.before(:suite) do
    begin
      FactoryBot.lint
    rescue => e
      puts "Error during factory linting: #{e.message}"
      exit 1
    end
  end
end
