require "httparty"

class PeopleFetcher
  include HTTParty
  BASE_URL =  "https://swapi.dev/api/people/"

  def self.fetch_all
    all_people = []
    next_url = BASE_URL

    while next_url do
      response = HTTParty.get(next_url)
      all_people.concat(response.parsed_response["results"])
      next_url = response.parsed_response["next"]
    end

    all_people do |person_data|
      species_url = person_data["species"].first
      species_name = fetch_species_name(species_url) if species_url

      species = Species.find_or_create_by(name: species_name) if species_name

      Person.create(
        name: person_data["name"],
        birth_year: person_data["birth_year"],
        gender: person_data["gender"],
        homeworld: person_data["homeworld"],
        species: species
      )
    end
  end
  def self.fetch_species_name(url)
    response = HTTParty.get(url)
    response.parsed_response["name"] if response.success?
  rescue
    nil
  end
end
