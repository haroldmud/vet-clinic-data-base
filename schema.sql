-----ANIMALS TABLE-----
CREATE TABLE animals ( ID int, Name varchar(100), Date_of_birth date, Escape_attempts int, Neutered boolean, Weight_kg decimal );

ALTER TABLE animals DROP COLUMN ID; -----> deletes a specific column(ID)
ALTER TABLE animals ADD ID SERIAL PRIMARY KEY;

ALTER TABLE animals ADD Species varchar(100);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id varchar(100);
ALTER TABLE species  ADD CONSTRAINT ID INT FOREIGN KEY ( name ) REFERENCES animals(species_id);
ALTER TABLE owner  ADD CONSTRAINT ID INT FOREIGN KEY ( full_name ) REFERENCES animals(owner_id);


-----OWNER TABLE----
CREATE TABLE owner ( ID int, Full_name varchar(100), Age int, PRIMARY KEY (ID)  );

-----SPICIES TABLE-----
CREATE TABLE species ( ID INT, Name VARCHAR(100), PRIMARY KEY (ID));
ALTER TABLE species DROP COLUMN ID;
ALTER TABLE species ADD ID SERIAL PRIMARY KEY;


CREATE TABLE vets (id SERIAL PRIMARY KEY, name varchar(100), age int, date_of_graduation date);

CREATE TABLE specializations (id SERIAL PRIMARY KEY, vet_name varchar(100));
ALTER TABLE specializations ADD species varchar(100);

CREATE TABLE visits (id SERIAL PRIMARY KEY, animal varchar(100), vet varchar(100), visit_date date, animals_id INT, vets_id, CONSTRAINT fk_visit_animals FOREIGN KEY(animals_id) REFERENCES animals(ID), CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id) );

ALTER TABLE animals ADD vet_id varchar(100);
