/***********************************************************************************************************************/
# insert the data in database
/**********************************************************************************************************************/

INSERT INTO `health_care_db`.`hospital`
(`Hospital_id`,
`Hospital_name`,
`City_name`)
VALUES
('',"<p>Sonoma Development Centre</p>","<p>Eldridge</p>"),
('',"<p>Porteville Development Centre </p>", "<p>Porteville</p>" ),
('',"<p>Allen County Hospital </p>", "<p>LOla</p>" ),
('',"<p>Anderson County Hospital </p>", "<p>Garnett</p>" ),
('',"<p>Ashland Health centre </p>", "<p>Ashland</p>" ),
('',"<p>Associated Eye Surgical Centre </p>", "<p>Wichita</p>" ),
('',"<p>Atchison Hospital </p>", "<p>Atchison</p>" ),
('',"<p>Bob Wilson Memorial Grant County Hospital </p>", "<p>Ulysses</p>" ),
('',"<p>Cedar Vale Community Hospital </p>", "<p>Cedar Vale</p>" ),
('',"<p>Citizen Medical Centre </p>", "<p>Lolby</p>" ),
('',"<p>Coffey County Hospital</p>", "<p>Burlington</p>" );

INSERT INTO `health_care_db`.`doctors`
(`Doctors_id`,
`Doctors_name`,
`Department_name`)
VALUES
('',"<B>Dr.Ajay Lodha </B>","</p> Primary Care </p>"), 
('',"<B> Dr.David Lee </B>","<B> Primary Care </B>"),
('',"<B> Dr.Abie Lee </B>","<B> Primary Care </B>"),
('',"<B> Dr.Gary Guaranaccia </B>","<B> OB-GYN </B>"),
('',"<B> Dr.Adam Romiff </B>","<B> OB-GYN </B>"),
('',"<B> Dr.Sangeet Khanna </B>","<B> Psychiatrist </B>"),
('',"<B> Dr.Howard Schwartz </B>","<B> Cardiologist</B>"),
('',"<B> Dr. John Anstasi </B>","<B> Cardiothracic Surgeon</B>"),
('',"<B> Dr. Ira Rothfeld </B>","<B> ENT</B>"),
('',"<B> Dr. Tom Moon </B>","<B> ENT</B>");

INSERT INTO `health_care_db`.`insurance`
(`Insurance_id`,
`Company_name`,
`policy_type`)
VALUES ('', "<p>Alaska Insurance Providers</p>", "Medical" ),
('', "<p>Alabama Insurance Providers</p>", "Medical" ),
('', "<p>Arizona Insurance Providers</p>", "Medical" ),
('', "<p>California Insurance Providers</p>", "Medical" ),
('', "<p>Colorado Insurance Providers</p>", "Medical" ),
('', "<p>Connecticut Insurance Providers</p>", "Medical" ),
('', "<p>Florida Insurance Providers</p>", "Medical" ),
('', "<p>Montana Insurance Providers</p>", "Dental" );


INSERT INTO `health_care_db`.`patient`
(`Patient_id`,
`Patient_name`,
`patient_DOB`,
`patient_BloodGroup`)
VALUES
('',"Samiksha Solanki",'02-11-1991',"Ab+"),
('',"Alex Lopez",'1989-12-18',"Ab+"),
('',"Frank Garica",'1970-10-11',"b+"),
('',"Jose Crets",'1989-01-01',"A+"),
('',"Candy Cruz",'1990-12-20',"b+"),
('',"Tim Vang",'1991-12-01',"b+"),
('',"Denny Manvel",'1992-03-05',"Ab+"),
('',"Rocky Penez",'1977-07-09',"A+"),
('',"Sue Vang",'1989-12-18',"Ab+"),
('',"pablo",'1989-10-10',"A+"),
('',"Christian",'1990-03-01',"b+"),
('',"Andrew",'1990-09-09',"Ab+");

INSERT INTO `health_care_db`.`insurance_Acceptance`
(`Insurance_Acceptance_id`,
`Insurance_Acceptance_Info`,
`Doctors_id`,
`Insurance_id`)
VALUES
('1',"<B>POP</B>",'1','1'),
('2',"<B>POP</B>",'1','1'),
('3',"<B>Non POP</B>",'5','1'),
('4',"<B>POP</B>",'2','3'),
('5',"<B>Non POP</B>",'1','7'),
('6',"<B> POP</B>",'4','6'),
('7',"<B>Non POP</B>",'5','5'),
('8',"<B>POP</B>",'4','3'),
('9',"<B>POP</B>",'9','6'),
('10',"<B>Non POP</B>",'3','2');
INSERT INTO `health_care_db`.`prescription`
(`Prescription_id`,
`Doctors_id`,
`Department_id`,
`Patient_id`)
VALUES('1','5' ,'2','14'),
      ('2','3' ,'2','15'),
      ('3','4' ,'2','17'),
      ('4','4' ,'4','18'),
	  ('5','6' ,'3','19'),
      ('6','5' ,'6','20'),
      ('7','4' ,'5','13');
      
INSERT INTO `health_care_db`.`department`
(`Department_id`,
`Doctors_id`,
`Department_Name`)
VALUES
('1', '2', " <B> OB-GBO </B>"),
('2', '5', " <B> ENT </B>"),
('3', '4', " <B> Surgery </B>"),
('4', '6', " <B> Psychiatrist </B>"),
('5', '4', " <B> Cardiologist </B>"),
('6', '3', " <B> ENT </B>");

INSERT INTO `health_care_db`.`prescription`
(`Prescription_id`,
`Doctors_id`,
`Department_id`,
`Patient_id`,
`prescription_dts`,
`prescription_Info`)
VALUES
('','2','1','2','2004-01-01 13:00:00',"<ul><li>Iron Pill </li><li>Thyroxin 25mcg</li></ul>"),
('','5','2','2','2004-10-10 15:00:00',"<ul><li>Iron Pill Twice a day</li><li>Thyroxin 75mcg</li></ul>"),
('','4','3','3','2010-12-15 18:05:00',"<ul><li>Astepro (azelastine hydrochloride nasal spray)</li><li>Bactroban Nasal 2%</li></ul>"),
('','2','1','5','2012-01-01 12:00:00',"<ul><li>Depakote ER (divalproex sodium)</li><li>Floxin otic</li></ul>"),
('','2','1','4','2012-10-10 11:00:00',"<ul><li>Aludrox (200 ml)</li><li> Dizicum gel </li></ul>"),
('','5','2','2','2004-01-01 10:30:00',"<ul><li>Depakote ER (divalproex sodium)</li><li>Floxin otic</li></ul>"),
('','4','3','2','2013-09-10 17:10:00',"<ul><li>Avidox -OZ</li><li> Biodoxi</li></ul>"),
('','6','4','2','2004-01-01 13:00:00',"<ul><li>Iron Pill</li><li>Thyroxin 25mcg</li></ul>");

INSERT INTO `health_care_db`.`login`
(`login_id`,
`username`,
`password`)
VALUES
('',"solankisamiksha",MD5('testing')),
('',"Alex Lopez",MD5('AlexL')),
('',"Frank Garica",MD5('FRANK')),
(''," Dr.David Lee",MD5('David12')),
('',"Dr. Tom Moon",MD5('MoonTom ')),
('',"Christian",MD5('Christ23')),
('',"Andrew",MD5('testing123'));
INSERT INTO `health_care_db`.`disease_group`
(`Disease_Group_id`,
`Disease_Group`)
VALUES
('',"Abdomen"),
('',"Thyroid Gland"),
('',"Chronic Kidney"),
('',"Throat Disorders"),
('',"Joints Disorder"),
('',"Immune Disorder"),
('',"Tooth Disorder"),
('',"Macular Degeneration"),
('',"Obesity");
select * from `health_care_db`.`disease_group`;
INSERT INTO `health_care_db`.`media_assistance`
(`Media_id`,
`Disease`,
`video_url_Assistance`,
`Image_Assistance`,
`Disease_Group_id`)
VALUES
('',"Acid Indigestion","","F:\fall-2014\csci_226\DataBase_Health\images\stomach.jpg" ,'1'),
('',"LowerGI series","","F:\fall-2014\csci_226\DataBase_Health\images\intestines.jpg",'1'),
('',"Ulcerative series","","F:\fall-2014\csci_226\DataBase_Health\images\stomach.jpg",'1'),
('',"Hypothrodism","","F:\fall-2014\csci_226\DataBase_Health\images\THYROID.jpg",'4'),
('',"Hyperthyrodism","","F:\fall-2014\csci_226\DataBase_Health\images\THYROID.jpg.jpg",'4'),
('',"Amyloidsis","","F:\fall-2014\csci_226\DataBase_Health\images\neck_bone.jpg",'5'),
('',"Cramp","","F:\fall-2014\csci_226\DataBase_Health\images\Legbone.jpg",'7'),
('',"Charley horse","","F:\fall-2014\csci_226\DataBase_Health\images\cervical_stenosis.jpg",'7');

INSERT INTO `health_care_db`.`patient_insurance_acceptance`
(`patient_insurance_acceptance_id`,
`Patient_id`,
`Insurance_id`)
VALUES
('',13,1),
('',14,2),
('',15,3),
('',16,2),
('',17,4),
('',18,5),
('',19,6),
('',20,7),
('',21,8),
('',22,9),
('',23,1),
('',13,3),
('',14,1),
('',15,1),
('',16,1),
('',17,4),
('',17,5),
('',18,8),
('',19,9);

INSERT INTO `health_care_db`.`zips`
(`Zips_id`,
`city`,
`zip_code`)
VALUES
('1','CA','937261'),
('2','CA','925782'),
('3','DEL','110059'),
('4','CA','957689'),
('5','GA','345673'),
('6','MUM','234351'),
('7','GA','980000'),
('8','CA','948796'),
('9','CA','987901');

/**************************************************************************************************************************************/
/* Alter table prescription with new added columns prescription_dts and prescription_Info */
UPDATE `health_care_db`.`prescription`
    SET `prescription_dts` = CASE `prescription_id`
        WHEN 1 THEN '2004-01-01 13:00:00'
        WHEN 2 THEN '2004-01-01 13:00:00' 
        WHEN 3 THEN '2010-12-15 18:05:00'
        WHEN 4 THEN '2012-01-01 12:00:00'
		WHEN 5 THEN '2012-10-10 11:00:00'
		WHEN 6 THEN '2004-01-01 10:30:00'
        WHEN 7 THEN '2013-09-10 17:10:00'

    END,
    `prescription_Info` = CASE `prescription_id`
        WHEN 1 THEN "<ul><li>Iron Pill </li><li>Thyroxin 25mcg</li></ul>"
        WHEN 2 THEN "<ul><li>Iron Pill Twice a day</li><li>Thyroxin 75mcg</li></ul>"
        WHEN 3 THEN "<ul><li>Astepro (azelastine hydrochloride nasal spray)</li><li>Bactroban Nasal 2%</li></ul>"
        WHEN 4 THEN "<ul><li>Depakote ER (divalproex sodium)</li><li>Floxin otic</li></ul>"
		WHEN 5 THEN "<ul><li>Aludrox (200 ml)</li><li> Dizicum gel </li></ul>"
		WHEN 6 THEN "<ul><li>Depakote ER (divalproex sodium)</li><li>Floxin otic</li></ul>"
        WHEN 7 THEN "<ul><li>Avidox -OZ</li><li> Biodoxi</li></ul>"
    END
WHERE `prescription_id` IN (1,2,3,4,5,6,7);
/*************************************************************************************************************************************/
UPDATE `health_care_db`.`insurance`
    SET `policy_amount` = CASE `Insurance_id`
        WHEN 1 THEN '1000.25'
        WHEN 2 THEN '2500.50' 
        WHEN 3 THEN '3000.40'
        WHEN 4 THEN '2200.00'
		WHEN 5 THEN '1000.00'
		WHEN 6 THEN '1100.00'
        WHEN 7 THEN '2600.00'
        WHEN 8 THEN '1500.00'

    END
   
WHERE `Insurance_id` IN (1,2,3,4,5,6,7,8);

UPDATE `health_care_db`.`patient`
    SET `Phone_NO` = CASE `Patient_id`
        WHEN 13 THEN '5597097238'
        WHEN 14 THEN '5597283482' 
        WHEN 15 THEN '9811171182'
        WHEN 16 THEN '9582738988'
		WHEN 17 THEN '9582738982'
		WHEN 18 THEN '9650041445'
        WHEN 19 THEN '9873939353'
        WHEN 20 THEN '7865439211'
        WHEN 21 THEN '5567098234'
       WHEN 22 THEN  '5764839021'
       WHEN 23 THEN  '3489876890'

    END,
    `email` = CASE `Patient_id`
      WHEN 13 THEN   "1@fake.com"
        WHEN 14 THEN "fake2@fake.com"
        WHEN 15 THEN "fake3@fake.com"
        WHEN 16 THEN "fake4@fake.com"
		WHEN 17 THEN "fake5@fake.com"
		WHEN 18 THEN "fake6@fake.com"
        WHEN 19 THEN "fake7@fake.com"
        WHEN 20 THEN "fake8@fake.com"
        WHEN 21 THEN "fake9@fake.com"
       WHEN 22 THEN  "fake10@fake.com"
       WHEN 23 THEN  "fake11@fake.com"
    END,
     `Address` = CASE `Patient_id`
      WHEN 13 THEN "4908 N Ninth street app 211, fresno"
        WHEN 14 THEN "512 south able street ,milpitas" 
        WHEN 15 THEN "121 N fifth street clovis"
        WHEN 16 THEN "342 house no 12 street 121, san jose"
		WHEN 17 THEN "456 street no 17 app 212 , sunny vale"
		WHEN 18 THEN "246 street no 14 app# 34, scremento"
        WHEN 19 THEN "345 house no 12 , mumbai"
        WHEN 20 THEN "343 house no 56 , delhi "
        WHEN 21 THEN " 7 west  street z house no 4 , delhi "
       WHEN 22 THEN "4908 N Ninth street app 213, fresno"
       WHEN 23 THEN  "4908 N Ninth street app 420, fresno"
    END,
    `city` = CASE `Patient_id`
      WHEN 13 THEN "CA"
        WHEN 14 THEN "GA" 
        WHEN 15 THEN "CA"
        WHEN 16 THEN "CA"
		WHEN 17 THEN "CA"
		WHEN 18 THEN "CA"
        WHEN 19 THEN "MUM"
        WHEN 20 THEN "DEL"
        WHEN 21 THEN "CA"
       WHEN 22 THEN  "CA"
       WHEN 23 THEN  "CA"
    END
WHERE `Patient_id` IN (13,14,15,16,17,18,19,20,21,22,23);

INSERT INTO `health_care_db`.`login`
(`login_id`,
`username`,
`password`)
VALUES
( '','Sami',md5('sam123'));
INSERT INTO reports
(reports_id,
report_type)
VALUES
('','Blood'),
('','X-rays'),
('','MRI'),
('','CT-scans'),
('','Ultrasound'),
('','Urology');













