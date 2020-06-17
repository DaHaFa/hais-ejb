package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;


@Entity
@NamedQuery(name="GeoLocation.findAll", query="SELECT g FROM GeoLocation g")
public class GeoLocation implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private GeoLocationID geoLocationID;

	private double longitude;
	private double latitude;
	private double altitude;


	public GeoLocationID getGeoLocationID() {
		return this.geoLocationID;
	}

	public void setGeoLocationID(final GeoLocationID geoLocationID) {
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
