package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="TreatmentSchedule.findAll", query="SELECT t FROM TreatmentSchedule t")
public class TreatmentSchedule implements Serializable, Identifiable<TreatmentScheduleID> {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private TreatmentScheduleID treatmentScheduleID;

	@ManyToOne
	@JoinColumn(name="TREATMENTSTEP")
	private TreatmentType treatmentStep;

	private long sequenceNumber;


	@Override
	public TreatmentScheduleID getID() {
		return this.treatmentScheduleID;
	}

	public void setID(final TreatmentScheduleID treatmentScheduleID) {
		this.treatmentScheduleID = treatmentScheduleID;
	}

	public long getSequenceNumber() {
		return this.sequenceNumber;
	}

	public void setSequencenumber(final long sequenceNumber) {
		this.sequenceNumber = sequenceNumber;
	}

	public TreatmentType getTreatmentStep() {
		return this.treatmentStep;
	}

	public void setTreatmentStep(final TreatmentType treatmentStep) {
		this.treatmentStep = treatmentStep;
	}
}