SELECT  A.ANIMALID ,COUNT( A.ANIMALID) AS "NUM OF MEDICINES" FROM ANIMAL A
       INNER JOIN USEIN UI
             ON UI.MEDICALFILEID = A.MEDICALFILEID
       
       GROUP BY A.ANIMALID    
       ORDER BY COUNT (A.ANIMALID) DESC

             
