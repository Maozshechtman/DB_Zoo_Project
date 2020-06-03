select animalid,animal.nickname,animalname from  animal  natural join medicalfile
where medicalfileid in (select medicalfileid from usein)
