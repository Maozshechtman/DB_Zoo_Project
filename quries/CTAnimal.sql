select doctorid,count(*) as number_of_pills 
from shechtma.treatment natural join usein
group by doctorid
