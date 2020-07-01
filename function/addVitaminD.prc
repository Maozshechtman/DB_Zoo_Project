create or replace procedure add_vitamin_D_per_doctor_id(doctor_id  int,n integer) is
cursor animals is select animalid from animal natural join shechtma.treatment t
  where t.doctorid = doctor_id;
  
num_pills integer;

begin
 num_pills :=number_of_pills(doctor_id) ;
  if num_pills >= n
    then
      for an in animals
        loop
     update animal 
     set food =food || ', vitamin D'
     where animalid = an.animalid;
     end loop;
  end if;

end ;
/
