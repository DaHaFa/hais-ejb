package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class GeoLocationID implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(insertable=false, updatable=false)
	private double longitude;

	@Column(insertable=false, updatable=false)
	private double latitude;

	@Column(insertable=false, updatable=false)
	private double altitude;

	public GeoLocationID() {}

	@Override
	public int hashCode() {
		return Objects.hash(this.altitude, this.latitude, this.longitude);
	}

	@Override
	public boolean equals(final Object object) {
		if (this == object)
			return true;
		if (object == null)
			return false;
		if (!(object instanceof GeoLocationID))
			return false;
		final GeoLocationID other = (GeoLocationID) object;
		return Double.doubleToLongBits(this.altitude) == Double.doubleToLongBits(other.altitude)
				&& Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(other.latitude)
				&& Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(other.longitude);
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
