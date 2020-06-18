package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Hospital.findAll", query="SELECT h FROM Hospital h")
public class Hospital implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="HospitalGenerator")
	@SequenceGenerator(name="HospitalGenerator",
		sequenceName="HospitalSequence", allocationSize=1)
	private long hospitalID;

	private String name;

	@ManyToOne
	@JoinColumn(name="ADDRESS")
	private Address address;

	@OneToMany
	@JoinColumn(name="HOSPITAL")
	private List<Building> buildings;


	@Override
	public Long getID() {
		return this.hospitalID;
	}

	public void setID(final long hospitalID) {
		this.hospitalID = hospitalID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public List<Building> getBuildings() {
		return this.buildings;
	}

	public void setBuildings(final List<Building> buildings) {
		this.buildings = buildings;
	}

	public Building addBuilding(final Building building) {
		this.getBuildings().add(building);
		return building;
	}

	public Building removeBuilding(final Building building) {
		this.getBuildings().remove(building);
		return building;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(final Address address) {
		this.address = address;
	}
}