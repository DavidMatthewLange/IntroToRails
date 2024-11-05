require "httparty"

class PeopleFetcher
  include HTTParty
  base_uri "https://swapi.dev/api"

  def self.fetch_all
    page = 1
    loop do
      response = get("/people?page=#{page}")
      data = response.parsed_response

      data["results"].each do |person_data|
        Person.find_or_initialize_by(api_id: person_data["url"]).tap do |person|
          person.name = person_data["name"]
          person.birth_year = person_data["birth_year"]
          person.gender = person_data["gender"]
          person.homeworld = person_data["homeworld"]
          person.species = person_data["species"]
          person.save!
        end
      end

      break unless data["next"]
      page += 1
    end
  end
end
