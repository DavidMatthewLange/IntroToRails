namespace :fetch do
  desc "Fetch all data from the Star Wars API"
  task all: :environment do
    PeopleFetch.fetch_all
    PlanetsFetch.fetch_all
    SpeciesFetch.fetch_all
    puts "Data fetched successfully!"
  end
end
