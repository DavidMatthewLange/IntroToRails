namespace :fetch do
  desc "Fetch all data from the Star Wars API"
  task all: :environment do
    PeopleFetcher.fetch_all
    PlanetsFetcher.fetch_all
    SpeciesFetcher.fetch_all
    puts "Data fetched successfully!"
  end
end
