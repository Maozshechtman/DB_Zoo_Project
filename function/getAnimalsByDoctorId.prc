create or replace procedure getAnimalsByDoctorId ( doctor_Id in Integer )
is
cursor res is
       select * from animal a 
       where a.medicalfileid in(
       select tr.medicalfileid from treatment tr
       where tr.doctorid = doctor_Id) ;
begin
 for i in res
   loop
     dbms_output.put_line('Animal ID:'||i.animalid||'Animal Name:'|| i.animalname);
     end loop;
end;
/
