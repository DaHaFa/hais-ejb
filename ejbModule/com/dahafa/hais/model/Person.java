package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
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

	@Id
	private String personID;

	@ManyToOne
	@JoinColumn(name="ADDRESS")
	private Address address;

	@OneToMany
	@JoinColumn(name="PERSON")
	private List<PersonHealthInsurance> personHealthInsurances;

	private String firstname;
	private String lastname;
	private String personTitle;
	private String gender;


	@Override
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

	public Gender getGender() {
		return Gender.valueOf(this.gender);
	}

	public void setGender(final Gender gender) {
		this.gender = gender.name();
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

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}

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