namespace :db do
  desc "Load seed fixtures (from db/fixtures) into the current environment's database." 
  task :seed2 => :environment do
    require 'active_record/fixtures'

    ActiveRecord::Base.establish_connection(Rails.env)
    base_dir     = File.join [Rails.root, ENV['FIXTURES_PATH'] || %w{test fixtures}].flatten
    fixtures_dir = File.join [base_dir, ENV['FIXTURES_DIR']].compact
    
    (ENV['FIXTURES'] ? ENV['FIXTURES'].split(/,/) : Dir["#{fixtures_dir}/**/*.{yml,csv}"].map {|f| f[(fixtures_dir.size + 1)..-5] }).each do |fixture_file|
    	ActiveRecord::Fixtures.create_fixtures(fixtures_dir, fixture_file)
    end
  end
end