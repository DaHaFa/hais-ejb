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
@NamedQuery(name="Floor.findAll", query="SELECT f FROM Floor f")
public class Floor implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="FloorGenerator")
	@SequenceGenerator(name="FloorGenerator",
		sequenceName="FloorSequence", allocationSize=1)
	private long floorID;

	@OneToMany
	@JoinColumn(name="FLOOR")
	private List<Room> rooms;

	private String name;


	@Override
	public Long getID() {
		return this.floorID;
	}

	public void setID(final long floorID) {
		this.floorID = floorID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public List<Room> getRooms() {
		return this.rooms;
	}

	public void setRooms(final List<Room> rooms) {
		this.rooms = rooms;
	}

	public Room addRoom(final Room room) {
		this.getRooms().add(room);
		return room;
	}

	public Room removeRoom(final Room room) {
		this.getRooms().remove(room);
		return room;
	}
}