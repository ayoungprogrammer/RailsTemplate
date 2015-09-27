namespace :db do
  desc "Crush and burn the database"
  task :hard_reset => :environment do
    File.delete("db/schema.rb")
    Rake::Task["db:drop"].execute
    Rake::Task["db:create"].execute
    Rake::Task["db:migrate"].execute
    Rake::Task["db:seed"].execute
    if !Rails.env.test?
      Rake::Task["db:data"].execute
    end
  end

  desc "Generate sample data for developing"
  task :data => :environment do
    # Create the sample data in here
  end
end
