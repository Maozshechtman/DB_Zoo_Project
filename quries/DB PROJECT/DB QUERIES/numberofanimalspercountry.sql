select countryname,count(*) as numberofanimals
from animal a,countries c
where a.countryid=c.countryid
group by c.countryname
order by c.countryname
