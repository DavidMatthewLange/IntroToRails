class StarWarsDataController < ApplicationController
  include HTTParty
  base_uri "https://swapi.dev/api"

  def people
    @people = self.class.get("/people")["results"]
  end

  def planets
    @planets = self.class.get("/planets")["results"]
  end

  def species
    @species = self.class.get("/species")["results"]
  end
end
