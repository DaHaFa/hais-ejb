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
-- Fabian
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.177945, 8.895004, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.177884, 8.894894, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.177766, 8.895040, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.177828, 8.895149, 0.000000, 1);
-- Dardan
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.143940, 9.380481, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.143834, 9.380512, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.143860, 9.380730, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(48.143969, 9.380698, 0.000000, 1);
-- Hasan
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(47.989273, 9.109747, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(47.989172, 9.109644, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(47.989024, 9.110027, 0.000000, 1);
INSERT INTO GeoLocation(longitude, latitude, altitude, room) VALUES
(47.989130, 9.110121, 0.000000, 1);
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
INSERT INTO HospitalEmployee(personID, salary, supervisor, typeOfEmployee, startEmployment, endEmployment, picture) VALUES 
('DE1234567890', 100000, null, 'DOCTOR', to_date('14-07-2018 00:00:00','dd-mm-yyyy hh24:mi:ss'), null, null);
INSERT INTO HospitalEmployee(personID, salary, supervisor, typeOfEmployee, startEmployment, endEmployment, picture) VALUES 
('DE1234567893', 60500, 'DE1234567890', 'NURSE', to_date('01-06-2020 00:00:00','dd-mm-yyyy hh24:mi:ss'), null, null);
--******************************************************************************************
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567890', 'B RH NEG');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567891', '0 RH POS');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567892', 'B RH POS');
INSERT INTO Patient(personID, bloodType) VALUES 
('DE1234567893', 'AB RH POS');
--******************************************************************************************
INSERT INTO AuthorizationRole(authorizationRoleID, name) VALUES
(AuthorizationRoleSequence.nextVal, 'DOCTOR');
INSERT INTO AuthorizationRole(authorizationRoleID, name) VALUES
(AuthorizationRoleSequence.nextVal, 'NURSE');
INSERT INTO AuthorizationRole(authorizationRoleID, name) VALUES
(AuthorizationRoleSequence.nextVal, 'MASSAGE THERAPIST');
--******************************************************************************************
INSERT INTO RoleAssignment(employee, authorizationRole) VALUES
('DE1234567890', 1);
INSERT INTO RoleAssignment(employee, authorizationRole) VALUES
('DE1234567893', 2);
--******************************************************************************************
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Tetanus Impfung', 3, 'MINUTES');
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Impfstoff vorbereiten', 1, 'MINUTES');
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Spritze mit Impfstoff füllen', 30, 'SECONDS');
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Oberarm desinfizieren', 15, 'SECONDS');
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Impfstoff spritzen', 10, 'SECONDS');
INSERT INTO TreatmentType(treatmentTypeID, name, averageDuration, averageDurationUom) VALUES
(TreatmentTypeSequence.nextVal, 'Pflaster anbringen', 30, 'SECONDS');
--******************************************************************************************
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(1, 2);
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(2, 2);
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(3, 2);
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(4, 2);
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(5, 2);
INSERT INTO Authorization(treatmentType, authorizationRole) VALUES
(6, 2);
--******************************************************************************************
INSERT INTO TreatmentSchedule(treatmentAction, treatmentStep, sequenceNumber) VALUES 
(1, 2, 1);
INSERT INTO TreatmentSchedule(treatmentAction, treatmentStep, sequenceNumber) VALUES 
(1, 3, 2);
INSERT INTO TreatmentSchedule(treatmentAction, treatmentStep, sequenceNumber) VALUES 
(1, 4, 3);
INSERT INTO TreatmentSchedule(treatmentAction, treatmentStep, sequenceNumber) VALUES 
(1, 5, 4);
INSERT INTO TreatmentSchedule(treatmentAction, treatmentStep, sequenceNumber) VALUES 
(1, 6, 5);
--******************************************************************************************
INSERT INTO BillOfMaterial(treatmentType, material, quantity) VALUES 
(2, 1, 1);
--******************************************************************************************
INSERT INTO Material(materialID, name, stock, uom) VALUES
(MaterialSequence.nextVal, 'Tetanus-Impfstoff-Kit', 150.0, 'Stk.');
INSERT INTO Material(materialID, name, stock, uom) VALUES
(MaterialSequence.nextVal, 'MRT-Gerät', 5.0, 'Stk.');
--******************************************************************************************
INSERT INTO RoomEquipment(room, material) VALUES
(2, 1);
INSERT INTO RoomEquipment(room, material) VALUES
(2, 2);
--******************************************************************************************
INSERT INTO Stay(stayID, room, hospital, responsibleDocor, startTimestamp, endTimestamp) VALUES
(StaySequence.nextVal, 1, 1, 'DE1234567890', to_date('04-04-2020 18:41:34','dd-mm-yyyy hh24:mi:ss'), to_date('04-04-2020 21:04:23','dd-mm-yyyy hh24:mi:ss'));
INSERT INTO Stay(stayID, room, hospital, responsibleDocor, startTimestamp, endTimestamp) VALUES
(StaySequence.nextVal, 1, 1, 'DE1234567890', to_date('16-06-2020 13:11:14','dd-mm-yyyy hh24:mi:ss'), null);
--******************************************************************************************
INSERT INTO Treatment(treatmentID, stay, room, hospitalEmployee, treatmentType, startTimestamp, endTimestamp) VALUES
(TreatmentSequence.nextVal, 1, 1, 'DE1234567893', 1, to_date('17-06-2020 08:04:34','dd-mm-yyyy hh24:mi:ss'), to_date('17-06-2020 08:07:57','dd-mm-yyyy hh24:mi:ss'));
--******************************************************************************************
INSERT INTO Disease(diseaseID, name, description) VALUES
(DiseaseSequence.nextVal, 'Radiusfraktur', 'Bruch der Speiche');
--******************************************************************************************
INSERT INTO Diagnostics(diagnosticsID, person, disease, doctor, diagnosticTimestamp) VALUES
(DiagnosticsSequence.nextVal, 'DE1234567891', 1, 'DE1234567893',to_date('17-06-2020 08:04:34','dd-mm-yyyy hh24:mi:ss'));
                                                                                                                    
--******************************************************************************************
INSERT INTO MedicalRecord(stay, diagnostics) VALUES
(1, 1);
