create table treatment(doctorid INT  not null,
MedicalFileId INT NOT NULL ,
PRIMARY KEY (doctorid,MedicalFileId ),
  FOREIGN KEY (MedicalFileId) REFERENCES MedicalFile(MedicalFileId),
  FOREIGN KEY (doctorid) REFERENCES kenis.worker(id))
