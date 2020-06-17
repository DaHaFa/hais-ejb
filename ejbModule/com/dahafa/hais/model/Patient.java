package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.NamedQuery;


@Entity
@NamedQuery(name="Patient.findAll", query="SELECT p FROM Patient p")
public class Patient extends Person implements Serializable {
	private static final long serialVersionUID = 1L;

	private String bloodType;


	public BloodType getBloodType() {
		return BloodType.of(this.bloodType);
	}

	public void setBloodType(final BloodType bloodType) {
		this.bloodType = bloodType.getDescription();
	}
}