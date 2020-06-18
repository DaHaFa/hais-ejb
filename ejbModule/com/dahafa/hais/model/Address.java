package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Address.findAll", query="SELECT a FROM Address a")
public class Address implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="AddressGenerator")
	@SequenceGenerator(name="AddressGenerator",
		sequenceName="AddressSequence", allocationSize=1)
	private long addressID;

	private String city;
	private String postalcode;
	private String streetname;
	private String streetnumber;


	@Override
	public Long getID() {
		return this.addressID;
	}

	public void setID(final long addressID) {
		this.addressID = addressID;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(final String city) {
		this.city = city;
	}

	public String getPostalcode() {
		return this.postalcode;
	}

	public void setPostalcode(final String postalcode) {
		this.postalcode = postalcode;
	}

	public String getStreetname() {
		return this.streetname;
	}

	public void setStreetname(final String streetname) {
		this.streetname = streetname;
	}

	public String getStreetnumber() {
		return this.streetnumber;
	}

	public void setStreetnumber(final String streetnumber) {
		this.streetnumber = streetnumber;
	}
}