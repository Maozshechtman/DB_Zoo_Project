create or replace function number_of_pills (doctor_id int) return integer is
  num_of_pills integer:=0;
begin
 select max(count) into num_of_pills 
 from( 
  select count(*) as count
  from treatment t  natural join usein
  where doctor_id =t.doctorid) ;
  
  return (num_of_pills);
end ;
/
