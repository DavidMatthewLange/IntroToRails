require "httparty"

class SpeciesFetch
  include HTTParty
  base_uri "https://swapi.dev/api"

  def self.fetch_all
    page = 1
    loop do
      response = get("/species?page=#{page}")
      data = response.parsed_response

      data["results"].each do |species_data|
        Species.find_or_initialize_by(api_id: species_data["url"]).tap do |specie|
          specie.name = person_data["name"]
          specie.classification = person_data["classification"]
          specie.designation = person_data["designation"]
          specie.language = person_data["language"]
          specie.save!
        end
      end

      break unless data["next"]
      page += 1
    end
  end
end
