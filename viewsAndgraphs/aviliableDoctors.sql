create or replace view  aviliableDoctors
as
select w.id,w.first_name,w.last_name
from kenis.worker w
where w.department_id=577 and w.id not in(select t.doctorid from shechtma.treatment t)
