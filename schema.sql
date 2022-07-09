-----ANIMALS TABLE-----
CREATE TABLE animals ( ID int, Name varchar(100), Date_of_birth date, Escape_attempts int, Neutered boolean, Weight_kg decimal );

ALTER TABLE animals DROP COLUMN ID; -----> deletes a specific column(ID)
ALTER TABLE animals ADD ID SERIAL PRIMARY KEY;

ALTER TABLE animals ADD Species varchar(100);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE species ADD CONSTRAINT ID INT FOREIGN KEY ( name ) REFERENCES animals(species_id);
ALTER TABLE owner ADD CONSTRAINT ID INT FOREIGN KEY ( full_name ) REFERENCES animals(owner_id);

-----OWNER TABLE----
CREATE TABLE owner ( ID int, Full_name varchar(100), Age int, PRIMARY KEY (ID)  );

-----SPICIES TABLE-----
CREATE TABLE species ( ID INT, Name VARCHAR(100), PRIMARY KEY (ID));
ALTER TABLE species DROP COLUMN ID;
ALTER TABLE species ADD ID SERIAL PRIMARY KEY;