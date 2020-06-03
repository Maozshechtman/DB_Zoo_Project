CREATE TABLE MedicalFile
(
  MedicalFileId INT NOT NULL,
  AnimalId INT NOT NULL,
  diseases VARCHAR(20) ,
  MedicalHistory VARCHAR(100) NOT NULL,
  PRIMARY KEY (MedicalFileId)
);

CREATE TABLE Medicine
(
  MedicineName VARCHAR(20) NOT NULL,
  MedicineId INT NOT NULL,
  ExpirationDate DATE NOT NULL,
  PRIMARY KEY (MedicineId)
);

CREATE TABLE useIN
(
  MedicalFileId INT NOT NULL,
  MedicineId INT NOT NULL,
  PRIMARY KEY (MedicalFileId, MedicineId),
  FOREIGN KEY (MedicalFileId) REFERENCES MedicalFile(MedicalFileId),
  FOREIGN KEY (MedicineId) REFERENCES Medicine(MedicineId)
);

CREATE TABLE Animal
(
  AnimalId INT NOT NULL,
  AnimalName VARCHAR(20) NOT NULL,
  MedicalFileId INT NOT NULL UNIQUE,
  DateOfBirth DATE NOT NULL,
  AreaConditionId INT NOT NULL,
  BinomialNomenclatureId INT NOT NULL,
  CounrtyId INT NOT NULL,
  Food VARCHAR(20) NOT NULL,
  MedicalFileId INT NOT NULL,
  PRIMARY KEY (AnimalId),
  FOREIGN KEY (MedicalFileId) REFERENCES MedicalFile(MedicalFileId)
);

CREATE TABLE AreaCondition
(
  AreaConditionId INT NOT NULL,
  AreaConditionName VARCHAR(20) NOT NULL,
  AnimalId INT NOT NULL,
  PRIMARY KEY (AreaConditionId, AnimalId),
  FOREIGN KEY (AnimalId) REFERENCES Animal(AnimalId)
);

CREATE TABLE Countries
(
  CountryName VARCHAR(20) NOT NULL,
  CountryId INT NOT NULL,
  AnimalId INT NOT NULL,
  PRIMARY KEY (CountryId, AnimalId),
  FOREIGN KEY (AnimalId) REFERENCES Animal(AnimalId)
);

CREATE TABLE BinomialNomenclature
(
  BinomialNomenclatureId INT NOT NULL,
  BinomialNomenclatureName VARCHAR(20) NOT NULL,
  AnimalId INT NOT NULL,
  PRIMARY KEY (BinomialNomenclatureId, AnimalId),
  FOREIGN KEY (AnimalId) REFERENCES Animal(AnimalId)
);
