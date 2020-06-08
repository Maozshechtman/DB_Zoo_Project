select  a.animalid , a.nickname , a.animalname ,a.dateofbirth from animal a
  where a.dateofbirth < add_months(sysdate,-10*12)
