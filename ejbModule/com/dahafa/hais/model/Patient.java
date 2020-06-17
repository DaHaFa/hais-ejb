package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;


@Entity
@NamedQuery(name="Patient.findAll", query="SELECT p FROM Patient p")
public class Patient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String personID;

	private String bloodType;


	public String getPersonID() {
		return this.personID;
	}

	public void setPersonID(final String personID) {
		this.personID = personID;
	}

	public BloodType getBloodType() {
		return BloodType.of(this.bloodType);
	}

	public void setBloodType(final BloodType bloodType) {
		this.bloodType = bloodType.getDescription();
	}
}