# Vet clinic database.


## Built With

- Major languages
- Frameworks
- Technologies used
- prsql

## For this project I did the following: :point_down: 

- Added a column `species` of type string to my animals table. Modifying my `schema.sql` file.
- Inserted the given data in `data.sql`.
- Did the following Inside a transaction:
  - Update the `animals` table by setting the species column to `Digimon` for all animals that have a name ending in mon.
![$digimon](https://user-images.githubusercontent.com/91553966/177774635-b3562612-3dda-44db-b5c1-e3d6d55ce820.png)
  - Update the `animals` table by setting the species column to pokemon for all animals that don't have species already set.
![$pokemon](https://user-images.githubusercontent.com/91553966/177774894-b8b0781e-4303-462e-a354-255bf296108c.png)
  - Commit the transaction.
  - Verify that change was made and persists after commit.

- Did the following Inside the next transaction:
  - Deleted all records in the `animals` table.
![$delete](https://user-images.githubusercontent.com/91553966/177775622-505f5d4b-3fab-4edc-bc18-448ebacb2736.png)
  - Rollback the transition
![$rollback](https://user-images.githubusercontent.com/91553966/177776174-78224d0b-3bce-4057-b528-8c4ea4da9dd1.png)

- Did the following in another new transition :
  - Delete all animals born after Jan 1st, 2022.
   ![$delete 2022](https://user-images.githubusercontent.com/91553966/177776967-19edda18-07bc-4c71-a95a-d7137c476015.png)
  - Create a savepoint for the transaction.
![$savepoint](https://user-images.githubusercontent.com/91553966/177777102-8debab00-1cd0-4003-9605-b4a8b4d640ba.png)
  - Update all animals' weight to be their weight multiplied by -1.
  ![$allanimals-1](https://user-images.githubusercontent.com/91553966/177777630-90370526-3810-48d0-8c8b-12726974c54f.png)
  - Rollback to the savepoint .
![$rollback2](https://user-images.githubusercontent.com/91553966/177778025-af61cc71-9249-42d7-8070-56abfd9be139.png)
  - Update all animals' weights that are negative to be their weight multiplied by -1.
![allnegative-1](https://user-images.githubusercontent.com/91553966/177778181-361ee18a-f4a5-40b9-8180-44b1da62f46a.png)
  - Commit transaction

- Wrote queries to answer the following questions:
  - How many animals are there?
![$animalsnumber](https://user-images.githubusercontent.com/91553966/177778534-4717de74-b32a-40b7-8af2-a87275a9db43.png)
  - How many animals have never tried to escape?
![$noescape](https://user-images.githubusercontent.com/91553966/177778726-58d8d59a-231b-4fb9-a3c5-81ed57fd5437.png)
  - What is the average weight of animals?
![$weightAVG](https://user-images.githubusercontent.com/91553966/177778845-13051952-9f09-4fff-9336-72f6a73eb90c.png)
  - Who escapes the most, neutered or not neutered animals?
![$mostEscaped](https://user-images.githubusercontent.com/91553966/177779664-406bfaa2-0cc4-4211-8892-47ec6a25dc3c.png)
  - What is the minimum and maximum weight of each type of animal?
![$min maxWeight](https://user-images.githubusercontent.com/91553966/177779847-bdc3a43e-33ca-4d6f-9a37-d521153d9e36.png)
  - What is the average number of escape attempts per animal type of those born between 1990 and 2000?
  ![$attemptaverage20001990](https://user-images.githubusercontent.com/91553966/177779996-173ae6f2-c51d-415d-8576-7f8216fc2e3a.png)




## Authors

👤 **Author1**

- GitHub: [@githubhandle](https://github.com/haroldmud)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
