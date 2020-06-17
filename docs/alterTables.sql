-- ALTER TABLE Address
-- ADD CONSTRAINT fk_kurs_WKN FOREIGN KEY(WKN) REFERENCES wertpapier(WKN);

ALTER TABLE Hospital
ADD CONSTRAINT fk_hospital_address FOREIGN KEY(address) REFERENCES Address(addressID);

ALTER TABLE Building
ADD CONSTRAINT fk_building_hospital FOREIGN KEY(hospital) REFERENCES Hospital(hospitalID);

ALTER TABLE Floor
ADD CONSTRAINT fk_floor_building FOREIGN KEY(building) REFERENCES Building(buildingID);

ALTER TABLE Room
ADD CONSTRAINT fk_room_floor FOREIGN KEY(floor) REFERENCES Floor(floorID);

ALTER TABLE GeoLocation
ADD CONSTRAINT fk_GeoLocation_room FOREIGN KEY(room) REFERENCES Room(roomID);

ALTER TABLE HealthInsurance
ADD CONSTRAINT fk_HealthInsurance_address FOREIGN KEY(address) REFERENCES Address(addressID);

ALTER TABLE Person
ADD CONSTRAINT fk_person_address FOREIGN KEY(address) REFERENCES Address(addressID);
/*
ALTER TABLE Person
ADD CONSTRAINT fk_person_insurance FOREIGN KEY (insuranceNumber) REFERENCES HealthInsurance(insuranceNumber);
*/

ALTER TABLE PersonHealthInsurance
ADD CONSTRAINT fk_personHealthInsurance_person FOREIGN KEY(person) REFERENCES Person(personID);
ALTER TABLE PersonHealthInsurance
ADD CONSTRAINT fk_personHealthInsurance_insurance FOREIGN KEY(insurance) REFERENCES HealthInsurance(insuranceID);


ALTER TABLE HospitalEmployee
ADD CONSTRAINT fk_hospitalEmployee_personID FOREIGN KEY(personID) REFERENCES Person(personID);
ALTER TABLE HospitalEmployee
ADD CONSTRAINT fk_hospitalEmployee_employee FOREIGN KEY(supervisor) REFERENCES HospitalEmployee(personID);

ALTER TABLE Patient
ADD CONSTRAINT fk_patient_personID FOREIGN KEY(personID) REFERENCES Person(personID);

-- ALTER TABLE AuthorizationRole

ALTER TABLE RoleAssignment 
ADD CONSTRAINT fk_roleAssignment_employee FOREIGN KEY(employee) REFERENCES HospitalEmployee(personID);
ALTER TABLE RoleAssignment 
ADD CONSTRAINT fk_roleAssignment_authorizationRole FOREIGN KEY(authorizationRole) REFERENCES AuthorizationRole(authorizationRoleID);

-- ALTER TABLE TreatmentType 

ALTER TABLE Authorization 
ADD CONSTRAINT fk_authorization_treatmentType FOREIGN KEY(treatmentType) REFERENCES TreatmentType(treatmentTypeID);
ALTER TABLE Authorization 
ADD CONSTRAINT fk_authorization_authorizationRole FOREIGN KEY(authorizationRole) REFERENCES AuthorizationRole(authorizationRoleID);

ALTER TABLE TreatmentSchedule 
ADD CONSTRAINT fk_treatmentSchedule_treatmentAction FOREIGN KEY(treatmentAction) REFERENCES TreatmentType(treatmentTypeID);
ALTER TABLE TreatmentSchedule 
ADD CONSTRAINT fk_treatmentSchedule_treatmentStep FOREIGN KEY(treatmentStep) REFERENCES TreatmentType(treatmentTypeID);

ALTER TABLE BillOfMaterial 
ADD CONSTRAINT fk_billOfMaterial_treatment FOREIGN KEY(treatmentType) REFERENCES TreatmentType(treatmentTypeID);
ALTER TABLE BillOfMaterial 
ADD CONSTRAINT fk_billOfMaterial_material FOREIGN KEY(material) REFERENCES Material(materialID);

-- ALTER TABLE Material 

ALTER TABLE RoomEquipment 
ADD CONSTRAINT fk_roomEquipment_room FOREIGN KEY(room) REFERENCES Room(roomID);
ALTER TABLE RoomEquipment 
ADD CONSTRAINT fk_roomEquipment_material FOREIGN KEY(material) REFERENCES Material(materialID);

ALTER TABLE Treatment 
ADD CONSTRAINT fk_treatment_room FOREIGN KEY(room) REFERENCES Room(roomID);
ALTER TABLE Treatment 
ADD CONSTRAINT fk_treatment_hospitalEmployee FOREIGN KEY(hospitalEmployee) REFERENCES HospitalEmployee(personID);
ALTER TABLE Treatment 
ADD CONSTRAINT fk_treatment_treatmentType FOREIGN KEY(treatmentType) REFERENCES TreatmentType(treatmentTypeID);
ALTER TABLE Treatment 
ADD CONSTRAINT fk_treatment_stay FOREIGN KEY(stay) REFERENCES Stay(stayID);

ALTER TABLE Stay 
ADD CONSTRAINT fk_stay_room FOREIGN KEY(room) REFERENCES Room(roomID);
ALTER TABLE Stay 
ADD CONSTRAINT fk_stay_hospital FOREIGN KEY(hospital) REFERENCES Hospital(hospitalID);
ALTER TABLE Stay 
ADD CONSTRAINT fk_stay_responsibleDoctor FOREIGN KEY(responsibleDoctor) REFERENCES HospitalEmployee(personID);


-- ALTER TABLE Disease 

ALTER TABLE Diagnostics 
ADD CONSTRAINT fk_diagnostics_person FOREIGN KEY(person) REFERENCES Person(personID);
ALTER TABLE Diagnostics 
ADD CONSTRAINT fk_diagnostics_disease FOREIGN KEY(disease) REFERENCES Disease(diseaseID);
ALTER TABLE Diagnostics 
ADD CONSTRAINT fk_diagnostics_doctor FOREIGN KEY(doctor) REFERENCES HospitalEmployee(personID);


ALTER TABLE MedicalRecord 
ADD CONSTRAINT fk_medicalRecord_stay FOREIGN KEY(stay) REFERENCES Stay(stayID);
ALTER TABLE MedicalRecord 
ADD CONSTRAINT fk_medicalRecord_diagnostics FOREIGN KEY(diagnostics) REFERENCES Diagnostics(diagnosticsID);