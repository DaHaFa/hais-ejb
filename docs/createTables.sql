CREATE TABLE Address (
	addressID INT PRIMARY KEY,
	postalcode VARCHAR2(16) NOT NULL,
	city VARCHAR2(64) NOT NULL,
	streetName VARCHAR2(64) NOT NULL,
	streetNumber VARCHAR2(8) NOT NULL
);

CREATE TABLE Hospital (
    hospitalID INT PRIMARY KEY,
    address INT NOT NULL UNIQUE,
    name VARCHAR2(128) NOT NULL
);

CREATE TABLE Building (
    buildingID INT PRIMARY KEY,
    hospital INT NOT NULL,
    name VARCHAR2(128) NOT NULL
);

CREATE TABLE Floor (
    floorID INT PRIMARY KEY,
    building INT NOT NULL,
    name VARCHAR2(128) NOT NULL
);

CREATE TABLE Room (
    roomID INT PRIMARY KEY,
    floor INT NOT NULL,
    name VARCHAR2(128) NOT NULL,
   -- coordinate SDO_GEOMETRY NOT NULL,
    roomType VARCHAR2(64),
    CONSTRAINT room_roomType CHECK (roomType in ('STAY','TREATMENT') AND roomType IS NOT NULL)
);

CREATE TABLE GeoLocation (
    longitude FLOAT,
    latitude FLOAT,
    altitude FLOAT,
    room INT NOT NULL,
    PRIMARY KEY (longitude, latitude, altitude)
);

CREATE TABLE HealthInsurance (
    insuranceID VARCHAR2(64) PRIMARY KEY,
    address INT NOT NULL,
    name VARCHAR2(128) NOT NULL
);

CREATE TABLE Person (
    personID VARCHAR2(64) PRIMARY KEY,
    address INT NOT NULL,
    -- insuranceNumber VARCHAR2(64) NOT NULL,
--  personalInsuranceNumber VARCHAR(64) 
--  hier muss noch eine m:n-Beziehung rein
    firstName VARCHAR2(64) NOT NULL, 
    lastName VARCHAR2(64) NOT NULL,
    personTitle VARCHAR2(64),
    gender VARCHAR2(8) NOT NULL,
    -- fingerprint BLOB
    CONSTRAINT person_gender CHECK (gender IN ('MALE', 'FEMALE', 'DIVERSE') AND gender IS NOT NULL)
);

-- u.U bei JPA mit Many 
CREATE TABLE PersonHealthInsurance (
    person VARCHAR2(64),
    insurance VARCHAR2(64),
    insuranceNumber VARCHAR2(64),
    CONSTRAINT personHealthInsurance_pk PRIMARY KEY (person, insuranceNumber)
);

CREATE TABLE HospitalEmployee (
    personID VARCHAR2(64) PRIMARY KEY,
    employee INT NOT NULL UNIQUE,
    salary INT NOT NULL,
    supervisor INT,
    typeOfEmployee VARCHAR2(64),
    startEmployment TIMESTAMP,
    endEmployment TIMESTAMP,
    picture BLOB,
    CONSTRAINT hospitalemployee_typeofemployee CHECK (typeOfEmployee IN ('DOCTOR', 'NURSE') AND typeOfEmployee IS NOT NULL)
);

CREATE TABLE Patient (
    personID VARCHAR2(64) PRIMARY KEY,
    bloodType VARCHAR2(16),
    CONSTRAINT patient_bloodType CHECK (bloodType IN ('A RH POS', '0 RH POS', 'B RH POS', 'AB RH POS', 'AB RH NEG', 'B RH NEG', '0 RH NEG', 'A RH NEG') AND bloodType IS NOT NULL)
);

CREATE TABLE AuthorizationRole (
    authorizationRoleID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE --,
    -- supervisorRole INT 
);

CREATE TABLE RoleAssignment (
    employee INT,
    authorizationRole INT,
    CONSTRAINT roleAssignment_primaryKey PRIMARY KEY (employee, authorizationRole)
);

CREATE TABLE TreatmentType (
    treatmentTypeID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE,
    averageDuration INT NOT NULL,           -- in Minutes? Secondes?
    averageDurationUom VARCHAR2(8),
    CONSTRAINT treatmentType_averageDurationUom CHECK (averageDurationUom IN ('SECONDS', 'MINUTES', 'HOURS', 'DAYS', 'MONTHS', 'YEARS') AND averageDurationUom IS NOT NULL)
);

CREATE TABLE Authorization (
    treatmentType INT,
    authorizationRole INT,
    CONSTRAINT authorization_primaryKey PRIMARY KEY (treatmentType, authorizationRole)
);

CREATE TABLE TreatmentSchedule (
    treatmentAction INT,
    treatmentStep INT,
    sequenceNumber INT,
    CONSTRAINT treatmentSchedule_primaryKey PRIMARY KEY (treatmentAction, treatmentStep),
    CONSTRAINT treatmentSchedule_recursive CHECK (treatmentAction <> treatmentStep)
);

CREATE TABLE BillOfMaterial (
    treatmentType INT,
    material INT,
    quantity DECIMAL(18,3),
    CONSTRAINT billOfMaterial_primaryKey PRIMARY KEY (treatmentType, material)
);

CREATE TABLE Material (
    materialID INT PRIMARY KEY,
    stock DECIMAL(18,3),
    uom VARCHAR(128)
);

CREATE TABLE RoomEquipment (
    room INT,
    material INT,
    CONSTRAINT roomEquipment_primaryKey PRIMARY KEY (room, material)
);

CREATE TABLE Treatment(
    treatmentID INT PRIMARY KEY,
    room INT NOT NULL,
    hospitalEmployee INT NOT NULL,
    treatmentType INT NOT NULL,
    startTimestamp TIMESTAMP,
    endTimestamp TIMESTAMP,
    CONSTRAINT treatment_UNIQUE UNIQUE (room, hospitalEmployee, treatmentType, startTimestamp)
);


CREATE TABLE Stay (
    stayID INT PRIMARY KEY,
    room INT NOT NULL,
    hospital INT NOT NULL,
    responsibleDoctor INT NOT NULL,
    treatment INT NOT NULL,
    startTimestamp TIMESTAMP NOT NULL,
    endTimestamp TIMESTAMP
);


CREATE TABLE Disease (
    diseaseID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE NOT NULL,
    description VARCHAR2(256) UNIQUE
);


CREATE TABLE Diagnostics (
    diagnosticsID INT PRIMARY KEY,
    person VARCHAR2(64) NOT NULL,
    disease INT NOT NULL,
    doctor INT NOT NULL,
    diagnosticTimestamp TIMESTAMP NOT NULL
);


CREATE TABLE MedicalRecord (
    stay INT, 
    diagnostics INT,
    CONSTRAINT medicalRecord_primaryKey PRIMARY KEY (stay, diagnostics)
);