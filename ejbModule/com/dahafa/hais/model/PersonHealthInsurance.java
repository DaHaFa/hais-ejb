package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;


@Entity
@NamedQuery(name="PersonHealthInsurance.findAll", query="SELECT p FROM PersonHealthInsurance p")
public class PersonHealthInsurance implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PersonHealthInsuranceID personHealthInsuranceID;

	@ManyToOne
	@JoinColumn(name="INSURANCE")
	private HealthInsurance healthInsurance;

	private String insuranceNumber;


	public PersonHealthInsuranceID getPersonHealthInsuranceID() {
		return this.personHealthInsuranceID;
	}

	public void setPersonHealthInsuranceID(final PersonHealthInsuranceID personHealthInsuranceID) {
		this.personHealthInsuranceID = personHealthInsuranceID;
	}

	public HealthInsurance getHealthInsurance() {
		return this.healthInsurance;
	}

	public void setHealthInsurance(final HealthInsurance healthInsurance) {
		this.healthInsurance = healthInsurance;
	}

	public String getInsuranceNumber() {
		return this.insuranceNumber;
	}

	public void setInsuranceNumber(final String insuranceNumber) {
		this.insuranceNumber = insuranceNumber;
	}
}