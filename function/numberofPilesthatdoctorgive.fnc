create or replace function number_of_pills (doctorid int) return integer is
  num_of_pills integer:=0;
begin
  select count(*)into num_of_pills 
  from treatment  natural join usein
  where doctorid = treatment.doctorid;
  
  return (num_of_pills);
end ;
/
