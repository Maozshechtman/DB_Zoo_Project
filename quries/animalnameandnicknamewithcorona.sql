select a.animalname, a.nickname, b.binomialnomenclaturename,c.countryname ,m.diseases
from animal a natural join  binomialnomenclature b natural join medicalfile m natural join countries c
      
       
