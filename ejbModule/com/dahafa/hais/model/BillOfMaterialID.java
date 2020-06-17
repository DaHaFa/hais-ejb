package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class BillOfMaterialID implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(insertable=false, updatable=false)
	private long treatmentType;

	@Column(insertable=false, updatable=false)
	private long material;


	public long getTreatmentType() {
		return this.treatmentType;
	}

	public void setTreatmentType(final long treatmentType) {
		this.treatmentType = treatmentType;
	}

	public long getMaterial() {
		return this.material;
	}

	public void setMaterial(final long material) {
		this.material = material;
	}

	@Override
	public boolean equals(final Object other) {
		if (this == other)
			return true;
		if (!(other instanceof BillOfMaterialID))
			return false;
		final BillOfMaterialID castOther = (BillOfMaterialID)other;
		return
			this.treatmentType == castOther.treatmentType
			&& this.material == castOther.material;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + (int) (this.treatmentType ^ this.treatmentType >>> 32);
		hash = hash * prime + (int) (this.material ^ this.material >>> 32);

		return hash;
	}
}