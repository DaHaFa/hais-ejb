package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Building.findAll", query="SELECT b FROM Building b")
public class Building implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="BuildingGenerator")
	@SequenceGenerator(name="BuildingGenerator",
		sequenceName="BuildingSequence", allocationSize=1)
	private long buildingID;

	@OneToMany
	@JoinColumn(name="BUILDING")
	private List<Floor> floors;

	private String name;


	@Override
	public Long getID() {
		return this.buildingID;
	}

	public void setID(final long buildingID) {
		this.buildingID = buildingID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public List<Floor> getFloors() {
		return this.floors;
	}

	public void setFloors(final List<Floor> floors) {
		this.floors = floors;
	}

	public Floor addFloor(final Floor floor) {
		this.getFloors().add(floor);
		return floor;
	}

	public Floor removeFloor(final Floor floor) {
		this.getFloors().remove(floor);
		return floor;
	}
}