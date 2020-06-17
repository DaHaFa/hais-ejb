package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;


@Embeddable
public class TreatmentScheduleID implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(insertable=false, updatable=false)
	private long treatmentAction;

	@Column(insertable=false, updatable=false)
	private long treatmentStep;


	public long getTreatmentAction() {
		return this.treatmentAction;
	}

	public void setTreatmentAction(final long treatmentAction) {
		this.treatmentAction = treatmentAction;
	}

	public long getTreatmentStep() {
		return this.treatmentStep;
	}

	public void setTreatmentStep(final long treatmentStep) {
		this.treatmentStep = treatmentStep;
	}

	@Override
	public boolean equals(final Object other) {
		if (this == other)
			return true;
		if (!(other instanceof TreatmentScheduleID))
			return false;
		final TreatmentScheduleID castOther = (TreatmentScheduleID)other;
		return
			this.treatmentAction == castOther.treatmentAction
			&& this.treatmentStep == castOther.treatmentStep;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + (int) (this.treatmentAction ^ this.treatmentAction >>> 32);
		hash = hash * prime + (int) (this.treatmentStep ^ this.treatmentStep >>> 32);

		return hash;
	}
}