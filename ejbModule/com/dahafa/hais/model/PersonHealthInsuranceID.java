package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class PersonHealthInsuranceID implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(insertable=false, updatable=false)
	private String person;

	@Column(insertable=false, updatable=false)
	private String insurance;


	public String getPerson() {
		return this.person;
	}

	public void setPerson(final String person) {
		this.person = person;
	}

	public String getInsurance() {
		return this.insurance;
	}

	public void setInsurance(final String insurance) {
		this.insurance = insurance;
	}

	@Override
	public boolean equals(final Object other) {
		if (this == other)
			return true;
		if (!(other instanceof PersonHealthInsuranceID))
			return false;
		final PersonHealthInsuranceID castOther = (PersonHealthInsuranceID)other;
		return
			this.person.equals(castOther.person)
			&& this.insurance.equals(castOther.insurance);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.person.hashCode();
		hash = hash * prime + this.insurance.hashCode();

		return hash;
	}
}