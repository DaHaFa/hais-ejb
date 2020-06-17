-- ******************************************************************************************
--Addresses for
    -- Hospitals
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '72336', 'Balingen', 'Tübinger Str.', '30');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '72458', 'Albstadt', 'Friedrichstraße', '39');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '72488', 'Sigmaringen', 'Hohenzollernstr.', '40');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '78532', 'Tuttlingen', 'Zeppelinstr.', '21');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '88630', 'Pfullendorf', 'Zum Eichberg', '2/1');
--Addresses for
    -- Persons
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '88605', 'Meßkirch', 'Hauptstr.', '21');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '72469', 'Meßstetten', 'Am Mühlkanal', '2');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '88515', 'Langenenslingen', 'Bei der Schule', '12');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '88605', 'Meßkirch', 'Lindenweg', '81');
--Addresses for
    -- Insurance
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '72488', 'Sigmaringen', 'In der Au', '5');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '78647', 'Trossingen', 'Löhrstr.', '45');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '88046', 'Friedrichshafen', 'Otto-Lilienthal-Str.', '10');
INSERT INTO Address(addressID, postalcode, city, streetName, streetNumber) VALUES 
(AddressSequence.nextVal, '70173', 'Stuttgart', 'Lautenschlagstr.', '22');
--******************************************************************************************
INSERT INTO Hospital(hospitalID, address, name) VALUES 
(HospitalSequence.nextVal, 1, 'Zollernalb Klinikum Balingen');
INSERT INTO Hospital(hospitalID, address, name) VALUES 
(HospitalSequence.nextVal, 2, 'Zollernalb Klinikum Albstadt');
INSERT INTO Hospital(hospitalID, address, name) VALUES 
(HospitalSequence.nextVal, 3, 'SRH Krankenhaus Sigmaringen');
INSERT INTO Hospital(hospitalID, address, name) VALUES 
(HospitalSequence.nextVal, 4, 'Klinikum Landkreis Tuttlingen');
INSERT INTO Hospital(hospitalID, address, name) VALUES 
(HospitalSequence.nextVal, 5, 'SRH Krankenhaus Pfullendorf');
-- ******************************************************************************************
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 1, 'Gbd. 1');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 1, 'Gbd. 2');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 1, 'Gbd. 3');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 2, 'Gbd. 1');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 2, 'Gbd. 2');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 2, 'Gbd. 3');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 2, 'Gbd. 4');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 3, 'Gbd. 1');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 3, 'Gbd. 2');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 3, 'Gbd. 3');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 4, 'Gbd. 1');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 4, 'Gbd. 2');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 4, 'Gbd. 3');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 5, 'Gbd. 1');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 5, 'Gbd. 2');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 5, 'Gbd. 3');
INSERT INTO Building(buildingID, hospital, name) VALUES 
(BuildingSequence.nextVal, 5, 'Gbd. 4');
--******************************************************************************************
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 1, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 1, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 1, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 1, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 5');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 2, 'Stw. 6');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 3, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 3, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 4, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 5, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 5, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 5, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 5, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 5, 'Stw. 5');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 6, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 6, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 7, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 7, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 7, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 7, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 8, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 9, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 9, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 9, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 10, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 10, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 11, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 11, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 11, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 11, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 12, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 13, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 14, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 15, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 16, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 16, 'Stw. 2');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 16, 'Stw. 3');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 16, 'Stw. 4');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 17, 'Stw. 1');
INSERT INTO Floor(floorID, building, name) VALUES 
(FloorSequence.nextVal, 17, 'Stw. 2');
-- ******************************************************************************************
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 1, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 1, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 2, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 2, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 3, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 3, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 4, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 4, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 5, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 5, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 6, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 6, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 7, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 7, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 8, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 8, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 9, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 9, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 10, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 10, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 11, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 11, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 12, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 12, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 13, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 13, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 14, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 14, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 15, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 15, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 16, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 16, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 17, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 17, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 18, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 18, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 19, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 19, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 20, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 20, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 21, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 21, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 22, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 22, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 23, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 23, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 24, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 24, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 25, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 25, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 26, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 26, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 27, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 27, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 28, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 28, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 29, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 29, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 30, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 30, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 31, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 31, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 32, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 32, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 33, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 33, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 34, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 34, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 35, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 35, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 36, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 36, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 37, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 37, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 38, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 38, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 39, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 39, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 40, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 40, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 41, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 41, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 42, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 42, 'Treatment 1', 'TREATMENT');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 44, 'Stay 1', 'STAY');
INSERT INTO Room(roomID, floor, name, roomType) VALUES 
(RoomSequence.nextVal, 44, 'Treatment 1', 'TREATMENT');
-- ******************************************************************************************
INSERT INTO HealthInsurance(insuranceID, address, name) VALUES 
('DE1234567890', 10, 'AOK Baden-Württemberg - Sigmaringen');
INSERT INTO HealthInsurance(insuranceID, address, name) VALUES 
('DE1234567891', 11, 'BKK SBH - Trossingen');
INSERT INTO HealthInsurance(insuranceID, address, name) VALUES 
('DE1234567892', 12, 'BKK ZF & Partner - Friedrichshafen');
INSERT INTO HealthInsurance(insuranceID, address, name) VALUES 
('DE1234567893', 13, 'TK Stuttgart');
-- ******************************************************************************************
CREATE TABLE GeoLocation (
    longitude FLOAT,
    latitude FLOAT,
    altitude FLOAT,
    room INT NOT NULL,
    PRIMARY KEY (longitude, latitude, altitude)
);
-- ***************************************************************************************
INSERT INTO Person(personID, address, firstName, lastName, personTitle, gender) VALUES 
('DE1234567890', 6, 'Hasan Kerem', 'Karadeniz', 'B. Sc.', 'MALE');
INSERT INTO Person(personID, address, firstName, lastName, personTitle, gender) VALUES 
('DE1234567891', 7, 'Fabian', 'Altenberg', 'fast B. Sc.', 'MALE');
INSERT INTO Person(personID, address, firstName, lastName, personTitle, gender) VALUES 
('DE1234567892', 8, 'Dardan', 'Rrafshi', '', 'MALE');
INSERT INTO Person(personID, address, firstName, lastName, personTitle, gender) VALUES 
('DE1234567893', 9, 'Angelina', 'Wöll', 'fast B. Sc.', 'FEMALE');
--******************************************************************************************
INSERT INTO PersonHealthInsurance(person, insurance, insuranceNumber) VALUES 
('DE1234567890', 'DE1234567890', 'DE1234567890');
INSERT INTO PersonHealthInsurance(person, insurance, insuranceNumber) VALUES 
('DE1234567891', 'DE1234567891', 'DE1234567891');
INSERT INTO PersonHealthInsurance(person, insurance, insuranceNumber) VALUES 
('DE1234567892', 'DE1234567892', 'DE1234567892');
INSERT INTO PersonHealthInsurance(person, insurance, insuranceNumber) VALUES 
('DE1234567893', 'DE1234567893', 'DE1234567892');
  --  CONSTRAINT personHealthInsurance_pk PRIMARY KEY (person, insuranceNumber)
--******************************************************************************************
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
--******************************************************************************************
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567890', 'A RH POS');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567891', '0 RH POS');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567892', 'B RH POS');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567893', 'AB RH POS');
--******************************************************************************************
CREATE TABLE AuthorizationRole (
    authorizationRoleID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE --,
    -- supervisorRole INT 
);
--******************************************************************************************
CREATE TABLE RoleAssignment (
    employee INT,
    authorizationRole INT,
    CONSTRAINT roleAssignment_primaryKey PRIMARY KEY (employee, authorizationRole)
);
--******************************************************************************************
CREATE TABLE TreatmentType (
    treatmentTypeID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE,
    averageDuration INT NOT NULL,           -- in Minutes? Secondes?
    averageDurationUom VARCHAR2(8),
    CONSTRAINT treatmentType_averageDurationUom CHECK (averageDurationUom IN ('SECONDS', 'MINUTES', 'HOURS', 'DAYS', 'MONTHS', 'YEARS') AND averageDurationUom IS NOT NULL)
);
--******************************************************************************************
CREATE TABLE Authorization (
    treatmentType INT,
    authorizationRole INT,
    CONSTRAINT authorization_primaryKey PRIMARY KEY (treatmentType, authorizationRole)
);
--******************************************************************************************
CREATE TABLE TreatmentSchedule (
    treatmentAction INT,
    treatmentStep INT,
    sequenceNumber INT,
    CONSTRAINT treatmentSchedule_primaryKey PRIMARY KEY (treatmentAction, treatmentStep),
    CONSTRAINT treatmentSchedule_recursive CHECK (treatmentAction <> treatmentStep)
);
--******************************************************************************************
CREATE TABLE BillOfMaterial (
    treatmentType INT,
    material INT,
    quantity DECIMAL(18,3),
    CONSTRAINT billOfMaterial_primaryKey PRIMARY KEY (treatmentType, material)
);
--******************************************************************************************
CREATE TABLE Material (
    materialID INT PRIMARY KEY,
    stock DECIMAL(18,3),
    uom VARCHAR(128)
);
--******************************************************************************************
CREATE TABLE RoomEquipment (
    room INT,
    material INT,
    CONSTRAINT roomEquipment_primaryKey PRIMARY KEY (room, material)
);
--******************************************************************************************
CREATE TABLE Treatment(
    treatmentID INT PRIMARY KEY,
    room INT NOT NULL,
    hospitalEmployee INT NOT NULL,
    treatmentType INT NOT NULL,
    startTimestamp TIMESTAMP,
    endTimestamp TIMESTAMP,
    CONSTRAINT treatment_UNIQUE UNIQUE (room, hospitalEmployee, treatmentType, startTimestamp)
);
--******************************************************************************************
CREATE TABLE Stay (
    stayID INT PRIMARY KEY,
    room INT NOT NULL,
    hospital INT NOT NULL,
    responsibleDoctor INT NOT NULL,
    treatment INT NOT NULL,
    startTimestamp TIMESTAMP NOT NULL,
    endTimestamp TIMESTAMP
);
--******************************************************************************************
CREATE TABLE Disease (
    diseaseID INT PRIMARY KEY,
    name VARCHAR2(64) UNIQUE NOT NULL,
    description VARCHAR2(256) UNIQUE
);
--******************************************************************************************
CREATE TABLE Diagnostics (
    diagnosticsID INT PRIMARY KEY,
    person VARCHAR2(64) NOT NULL,
    disease INT NOT NULL,
    doctor INT NOT NULL,
    diagnosticTimestamp TIMESTAMP NOT NULL
);
--******************************************************************************************
CREATE TABLE MedicalRecord (
    stay INT, 
    diagnostics INT,
    CONSTRAINT medicalRecord_primaryKey PRIMARY KEY (stay, diagnostics)
);