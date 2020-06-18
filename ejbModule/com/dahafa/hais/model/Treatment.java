package com.dahafa.hais.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Treatment.findAll", query="SELECT t FROM Treatment t")
public class Treatment implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="TreatmentGenerator")
	@SequenceGenerator(name="TreatmentGenerator",
		sequenceName="TreatmentSequence", allocationSize=1)
	private long treatmentID;

	@ManyToOne
	@JoinColumn(name="EMPLOYEE")
	private HospitalEmployee hospitalEmployee;

	@ManyToOne
	@JoinColumn(name="ROOM")
	private Room room;

	@ManyToOne
	@JoinColumn(name="TREATMENTTYPE")
	private TreatmentType treatmentType;

	private Timestamp startTimestamp;
	private Timestamp endTimestamp;


	@Override
	public Long getID() {
		return this.treatmentID;
	}

	public void setID(final long treatmentID) {
		this.treatmentID = treatmentID;
	}

	public Timestamp getEndTimestamp() {
		return this.endTimestamp;
	}

	public void setEndTimestamp(final Timestamp endTimestamp) {
		this.endTimestamp = endTimestamp;
	}

	public HospitalEmployee getHospitalEmployee() {
		return this.hospitalEmployee;
	}

	public void setHospitalEmployee(final HospitalEmployee hospitalEmployee) {
		this.hospitalEmployee = hospitalEmployee;
	}

	public Timestamp getStartTimestamp() {
		return this.startTimestamp;
	}

	public void setStartTimestamp(final Timestamp startTimestamp) {
		this.startTimestamp = startTimestamp;
	}

	public Room getRoom() {
		return this.room;
	}

	public void setRoom(final Room room) {
		this.room = room;
	}

	public TreatmentType getTreatmentType() {
		return this.treatmentType;
	}

	public void setTreatmentType(final TreatmentType treatmentType) {
		this.treatmentType = treatmentType;
	}
}