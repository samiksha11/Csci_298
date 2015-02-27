create database health_care_db;
CREATE TABLE `Hospital` (
  `Hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `Hospital_name` varchar(255),
  `City_name` varchar(255),
   PRIMARY KEY (`Hospital_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Doctors` (
  `Doctors_id` int(11) NOT NULL AUTO_INCREMENT,
  `Doctors_name` varchar(255),
  `Department_name` varchar(255),
   PRIMARY KEY (`Doctors_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `Patient` (
  `Patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_name` varchar(255),
  `patient_DOB` datetime,
  `patient_BloodGroup` char(5),
   PRIMARY KEY (`Patient_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE Patient modify COLUMN patient_DOB DATE;
CREATE TABLE `Insurance` (
  `Insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_name` varchar(255),
   `policy_type` char(10),
  PRIMARY KEY (`Insurance_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Insurance_Acceptance` (
  `Insurance_Acceptance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Insurance_Acceptance_Info` text,
   `Doctors_id` int(11) DEFAULT NULL,
  `Insurance_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`Insurance_Acceptance_id`),
    KEY `fk__Insurance_Acceptance__Doctors` (`Doctors_id`),
    KEY `fk__Insurance_Acceptance__Insurances` (`Insurance_id`),
  CONSTRAINT `fk__Insurance_Acceptance__Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `Doctors` (`Doctors_id`),
  CONSTRAINT `fk__Insurance_Acceptance__Insurances` FOREIGN KEY (`Insurance_id`) REFERENCES `Insurance` (`Insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Department` (
  `Department_id` int(11) NOT NULL AUTO_INCREMENT,
  `Doctors_id` int(11) DEFAULT NULL,
  `Department_Name` char(11),
   PRIMARY KEY (`Department_id`),
    KEY `fk__Department__Doctors` (`Doctors_id`),
    CONSTRAINT `fk__Department__Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `Doctors` (`Doctors_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
CREATE TABLE `Prescription` (
  `Prescription_id` int(11) NOT NULL AUTO_INCREMENT,
   `Doctors_id` int(11) DEFAULT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `Patient_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`Prescription_id`),
    KEY `fk__Prescription__Doctors` (`Doctors_id`),
  KEY `fk__Prescription__Patient` (`Patient_id`),
  KEY `fk__Prescription__Department` (`Department_id`),
  CONSTRAINT `fk__Prescription__Patient` FOREIGN KEY (`Patient_id`) REFERENCES `Patient` (`Patient_id`),
  CONSTRAINT `fk___Prescription_Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `Doctors` (`Doctors_id`),
CONSTRAINT `fk__Prescription__Department` FOREIGN KEY (`Department_id`) REFERENCES `Department` (`Department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `Media_Assistance` (
  `Media_id` int(11) NOT NULL AUTO_INCREMENT,
   `Disease` varchar(225) DEFAULT NULL,
  `video_url_Assistance` varchar(255) DEFAULT NULL,
  `Image_Assistance` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`Media_id`))
ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `Disease_Group` (
  `Disease_Group_id` int(11) NOT NULL AUTO_INCREMENT,
   `Disease_Group` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Disease_Group_id`))
  ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255),
  `password` varchar(255),
   PRIMARY KEY (`login_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `patient_insurance_acceptance` (
  `patient_insurance_acceptance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_id` int(11) DEFAULT NULL,
  `Insurance_id` int(11)DEFAULT NULL,
   PRIMARY KEY (`patient_insurance_acceptance_id`),
    KEY `fk__patient_insurance_acceptance__patient` (`Patient_id`),
    KEY `fk__patient_insurance_acceptance__Insurance` (`Insurance_id`),
    CONSTRAINT `fk__patient_insurance_acceptance__patient` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`),
    CONSTRAINT `fk__patient_insurance_acceptance__Insurance` FOREIGN KEY (`Insurance_id`) REFERENCES `insurance` (`Insurance_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*******************************************************************************************************************************/
/****************** create the normal form *******************************************************************/
CREATE TABLE `Zips` (
  `Zips_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` char(11) DEFAULT NULL,
  `zip_code` int(11)DEFAULT NULL,
   PRIMARY KEY (`Zips_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reports` (
  `reports_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` char(255) DEFAULT NULL,
   PRIMARY KEY (`reports_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table appointment( appointment_id int (11) not null auto_increment , 
Patient_id int(11) default null, 
Doctors_id int(11) default null, 
appointment_date_time datetime,
send_date datetime,
PRIMARY KEY (`appointment_id`),
    KEY `fk__appointment__Patient` (`Patient_id`),
  KEY `fk__appointment__Doctors` (`Doctors_id`),
 CONSTRAINT `fk__appointment__Patient` FOREIGN KEY (`Patient_id`) REFERENCES `Patient` (`Patient_id`),
  CONSTRAINT `fk__Prescription_Doctors` FOREIGN KEY (`Doctors_id`) REFERENCES `Doctors` (`Doctors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 Alter table appointment add column  appointment_relation enum('personal','relative');
Alter table  appointment add column other_patient_name varchar(255); 




/************************************************************************************************************************/
# updations in health database
/************************************************************************************************************************/
ALTER TABLE `health_care_db`.`patient`
ADD CURDATE datetime;
UPDATE  `health_care_db`.`patient`
   SET CURDATE = CURRENT_TIMESTAMP() WHERE `patient_id` >='13';
/* Alter Query*/
Alter Table `health_care_db`.`patient` 	ADD (Phone_NO int (20), email varchar(45),Address Varchar(255),city Varchar(40));
Alter table `health_care_db`.`prescription` Add(`prescription_dts` datetime DEFAULT NULL,`prescription_Info` text);
Alter Table `health_care_db`.`insurance` ADD ( `policy_amount` DECIMAL(5,2));
/******************************* Alter foregin key constraints***************************/
Alter table `health_care_db`.`Media_Assistance` Add(`Disease_Group_id` int(11),
 KEY `fk__Media_Assistance__Disease_Group` (`Disease_Group_id`),
CONSTRAINT `fk__Media_Assistance__Disease_Group` FOREIGN KEY (`Disease_Group_id`) REFERENCES `Disease_Group` (`Disease_Group_id`));
ALTER TABLE prescription CHANGE prescription_id prescription_id INT(11)AUTO_INCREMENT ;
Alter table `health_care_db`.`patient` Add(`city_N` char(11),`zip_code_no` int(11),
 KEY `fk__patient__city` (`city_N`),
CONSTRAINT `fk_patient__city` FOREIGN KEY (`city`) REFERENCES `zips` (`Zips_id`),
 KEY `fk__patient__zip_code_no` (`zip_code_no`),
CONSTRAINT `fk_patient__zip_code-no` FOREIGN KEY (`zip_code_no`) REFERENCES `zips` (`Zips_id`));
Alter table `health_care_db`.`patient` Add(`zip_code_no` int(11),
 KEY `fk__patient__zip_code_no` (`zip_code_no`),
CONSTRAINT `fk_patient__zip_code-no` FOREIGN KEY (`zip_code_no`) REFERENCES `zips` (`Zips_id`));

/****************** some more alter commands***************************************************************/
ALTER TABLE `health_care_db`.`media_assistance` MODIFY `Image_Assistance`  blob;
ALTER TABLE `health_care_db`.`media_assistance` MODIFY `video_url_Assistance`  blob;
ALTER TABLE `health_care_db`. `patient` ADD UNIQUE (email);
ALTER TABLE `health_care_db`. `patient`  CHANGE policy_amount zip_code INT(11);
alter table health_care_db.patient drop column zip_code;
ALTER TABLE `doctors` ADD `Phone_no` INT NOT NULL AFTER `Doctors_name`, ADD `Address` VARCHAR(255) NOT NULL AFTER `Phone_no`;

INSERT INTO `health_care_db`.`appointment`
(`appointment_id`,
`Patient_id`,
`Doctors_id`,
`appointment_date_time`,
`send_date`)
VALUES
('',
'13',
'16','','');




