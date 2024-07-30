namespace :code do
  desc "Run RuboCop and tests"
  task lint_and_test: :environment do
    puts "Running RuboCop..."
    system("bundle exec rubocop")
    puts "Running tests..."
    system("bundle exec rails test")
    system("bundle exec rails test:system")
  end
end
