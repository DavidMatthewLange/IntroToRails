require "httparty"

class PlanetsFetch
  include HTTParty
  base_uri "https://swapi.dev/api"

  def self.fetch_all
    page = 1
    loop do
      response = get("/planets?page=#{page}")
      data = response.parsed_response

      data["results"].each do |planets_data|
        Planet.find_or_initialize_by(api_id: planets_data["url"]).tap do |planet|
          planet.name = person_data["name"]
          planet.climate = person_data["climate"]
          planet.terrain = person_data["terrain"]
          planet.population = person_data["population"]
          planet.save!
        end
      end

      break unless data["next"]
      page += 1
    end
  end
end
