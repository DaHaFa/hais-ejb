package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="HealthInsurance.findAll", query="SELECT h FROM HealthInsurance h")
public class HealthInsurance implements Serializable, Identifiable<String> {
	private static final long serialVersionUID = 1L;

	@Id
	private String insuranceID;

	@ManyToOne
	@JoinColumn(name="ADDRESS")
	private Address address;

	private String name;


	@Override
	public String getID() {
		return this.insuranceID;
	}

	public void setID(final String insurance) {
		this.insuranceID = insurance;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}
}