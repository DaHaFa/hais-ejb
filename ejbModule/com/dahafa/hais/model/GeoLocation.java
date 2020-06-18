package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="GeoLocation.findAll", query="SELECT g FROM GeoLocation g")
public class GeoLocation implements Serializable, Identifiable<GeoLocationID> {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private GeoLocationID geoLocationID;

	@Column(insertable=false, updatable=false)
	private double longitude;

	@Column(insertable=false, updatable=false)
	private double latitude;

	@Column(insertable=false, updatable=false)
	private double altitude;


	@Override
	public GeoLocationID getID() {
		return this.geoLocationID;
	}

	public void setID(final GeoLocationID geoLocationID) {
		this.geoLocationID = geoLocationID;
	}

	public double getLongitude() {
		return this.longitude;
	}

	public void setLongitude(final double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return this.latitude;
	}

	public void setLatitude(final double latitude) {
		this.latitude = latitude;
	}

	public double getAltitude() {
		return this.altitude;
	}

	public void setAltitude(final double altitude) {
		this.altitude = altitude;
	}
}
