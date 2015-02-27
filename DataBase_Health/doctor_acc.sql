#select Doctors_name from doctors where in  (select Insurance_Acceptance_id count()>1 from insurance_acceptance where Doctors_id = Insurance_id) */
SELECT insurance_acceptance.Doctors_id,insurance_acceptance.Insurance_id,COUNT(DISTINCT `Insurance_id`) 
FROM insurance_acceptance group by Doctors_id;
/*INNER JOIN patient
ON doctors.Doctors_id=patient.Patient_id;*/
#SELECT doctors.Doctors_name from doctors union 
(select Doctors_id, Insurance_id,COUNT(DISTINCT `Insurance_id`) 
FROM insurance_acceptance where Doctors_id = Insurance_id);


SELECT 
  insurance_acceptance.Doctors_id, 
  doctors.Doctors_name, 
  insurance_acceptance.Insurance_id,
  count( insurance_acceptance.Insurance_id ) AS cnt
FROM  insurance_acceptance
INNER JOIN  insurance_acceptance ON Insurance_Acceptance_id= Doctors_id
GROUP BY doctors_name;   
        # ORDER BY cnt DESC
#LIMIT 5;
select Doctors_name as doctorname from doctors
union SELECT insurance_acceptance.Doctors_id,insurance_acceptance.Insurance_id,COUNT(`Insurance_id`)>1     
from insurance_acceptance
cross join Insurance_Acceptance on Insurance_Acceptance_id = doctors.Doctors_id; 
count(*) as total_doctor inner join patient on   
Patient_id = insurance_acceptance.patient_id group by insurance_acceptance.Doctors_id;