select animalname, countryname,binomialnomenclaturename
from( animal a  natural join countries c )natural join(animal a natural join binomialnomenclature b ) 
