# README

* Name:     David Lange
* Project:  Intro to Rails
* Created:  2024-11-03
* Edited:   2024-11-05

* Using the SWAPI (Star Wars API), this project utilizes the /people, /planets, and /species endpoints, associating them together.
* The data in each endpoint is structured in an array within the collection.
* The /people endpoint will be providing data for the character's name, birth year, gender, and homeworld and species throgh associations with the other tables.
* The /planets endpoint will be providing data for the planet's name, climate, terrain, and population.
* The /species endpoint will be providing data for the species' name, classification, designation, and language.
* The database is structured to match each endpoint, with the columns mentioned above. A text description follows:

* People
* id integer PK
* name string not null
* birth_year integer
* gender string
* homeworld_id integer FK references Planets.id
* species_id integer FK references Species.id
*
* Planets
* id integer PK
* name string not null, unique
* climate string
* terrain string
* population integer
*
* Species
* id integer PK
* name string not null
* classification string
* designation string
* language string