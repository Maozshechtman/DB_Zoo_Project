CREATE OR REPLACE  function is_busy_doctor (doctor_id int, busy int) return boolean 
is 
num_of_animals int;

begin
  select count(*)  into num_of_animals from shechtma.treatment t
         where doctor_id = t.doctorid;
         return  (num_of_animals > busy);
 end ;
