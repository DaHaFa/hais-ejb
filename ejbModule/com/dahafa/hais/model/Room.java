	package com.dahafa.hais.model;

import java.awt.geom.Path2D;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Room.findAll", query="SELECT r FROM Room r")
public class Room implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="RoomGenerator")
	@SequenceGenerator(name="RoomGenerator",
		sequenceName="RoomSequence", allocationSize=1)
	private long roomID;

	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name="ROOM")
	private List<GeoLocation> coordinates;

	@ManyToMany
	@JoinTable(name="ROOMEQUIPMENT", joinColumns={@JoinColumn(name="ROOM")},
		inverseJoinColumns={@JoinColumn(name="MATERIAL")})
	private List<Material> materials;

	private String name;
	private String roomType;


	public boolean contains(final double latitude, final double longitude) {
		if(this.coordinates.isEmpty())
			return false;

		final GeoLocation start = this.coordinates.get(0);

		final Path2D polygon = new Path2D.Double();
		polygon.moveTo(start.getLatitude(), start.getLongitude());

		for(int i = 1; i < this.coordinates.size(); i++) {
			final GeoLocation geoLocation = this.coordinates.get(i);
			polygon.lineTo(geoLocation.getLatitude(), geoLocation.getLongitude());
		}
		polygon.closePath();

		return polygon.contains(latitude, longitude);
	}


	@Override
	public Long getID() {
		return this.roomID;
	}

	public void setID(final long roomID) {
		this.roomID = roomID;
	}

	public List<GeoLocation> getCoordinates() {
		return this.coordinates;
	}

	public void setCoordinates(final List<GeoLocation> coordinates) {
		this.coordinates = coordinates;
	}

	public GeoLocation addRoom(final GeoLocation geoLocation) {
		this.getCoordinates().add(geoLocation);
		return geoLocation;
	}

	public GeoLocation removeRoom(final GeoLocation geoLocation) {
		this.getCoordinates().remove(geoLocation);
		return geoLocation;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public String getRoomType() {
		return this.roomType;
	}

	public void setRoomType(final String roomType) {
		this.roomType = roomType;
	}

	public List<Material> getMaterials() {
		return this.materials;
	}

	public void setMaterials(final List<Material> materials) {
		this.materials = materials;
	}
}