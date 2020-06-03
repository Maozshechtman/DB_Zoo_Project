select animalid,animalname,count(*) as numofmedicines
from animal natural join medicalfile natural join usein
group by animalid,animalname
order by animalname
