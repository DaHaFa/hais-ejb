package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

import com.dahafa.hais.Identifiable;


@Entity
@Inheritance(strategy=InheritanceType.JOINED)
@NamedQuery(name="Person.findAll", query="SELECT p FROM Person p")
public class Person implements Serializable, Identifiable<String> {
	private static final long serialVersionUID = 1L;


	private String personID;


	private Address address;


	private List<PersonHealthInsurance> personHealthInsurances;

	private String firstname;
	private String lastname;
	private String personTitle;
	private String gender;

	private String bloodType;

	@Override
	@Id
	@Column(name="personID")
	public String getID() {
		return this.personID;
	}

	public void setID(final String personID) {
		this.personID = personID;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(final String firstname) {
		this.firstname = firstname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(final String gender) {
		this.gender = gender;
	}

	public String getBloodType() {
		return this.bloodType;
	}

	public void setBloodType(final String bloodType) {
		this.bloodType = bloodType;
	}

	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(final String lastname) {
		this.lastname = lastname;
	}

	public String getPersonTitle() {
		return this.personTitle;
	}

	public void setPersonTitle(final String personTitle) {
		this.personTitle = personTitle;
	}

	@ManyToOne
	@JoinColumn(name="ADDRESS")
	public Address getAddress() {
		return this.address;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}


	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name="PERSON")
	public List<PersonHealthInsurance> getPersonHealthInsurances() {
		return this.personHealthInsurances;
	}

	public void setPersonHealthInsurances(final List<PersonHealthInsurance> personHealthInsurances) {
		this.personHealthInsurances = personHealthInsurances;
	}

	public PersonHealthInsurance addPersonHealthInsurance(final PersonHealthInsurance personHealthInsurance) {
		this.getPersonHealthInsurances().add(personHealthInsurance);
		return personHealthInsurance;
	}

	public PersonHealthInsurance removePersonhealthinsurance(final PersonHealthInsurance personHealthInsurance) {
		this.getPersonHealthInsurances().remove(personHealthInsurance);
		return personHealthInsurance;
	}
}