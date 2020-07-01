SELECT AN.ANIMALNAME, MD.MEDICINENAME, md.expirationdate FROM ANIMAL AN
       INNER JOIN USEIN UI ON UI.MEDICALFILEID = AN.MEDICALFILEID
       INNER JOIN MEDICINE MD ON UI.MEDICINEID = MD.MEDICINEID
       WHERE (MD.EXPIRATIONDATE < sysdate) 