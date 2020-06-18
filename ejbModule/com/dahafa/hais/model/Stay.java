package com.dahafa.hais.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Stay.findAll", query="SELECT s FROM Stay s")
public class Stay implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="StayGenerator")
	@SequenceGenerator(name="StayGenerator",
		sequenceName="StaySequence", allocationSize=1)
	private long stayID;

	@ManyToOne
	@JoinColumn(name="HOSPITAL")
	private Hospital hospital;

	@ManyToOne
	@JoinColumn(name="ROOM")
	private Room room;

	@ManyToOne
	@JoinColumn(name="RESPONSIBLEDOCTOR")
	private HospitalEmployee responsibleDoctor;

	@OneToMany
	@JoinColumn(name="TREATMENT")
	private List<Treatment> treatments;

	@ManyToMany
	@JoinTable(name="MedicalRecord", joinColumns={@JoinColumn(name="STAY")},
			inverseJoinColumns={@JoinColumn(name="DIAGNOSTICS")})
	private List<Diagnostics> medicalRecords;

	private Timestamp startTimestamp;
	private Timestamp endTimestamp;


	@Override
	public Long getID() {
		return this.stayID;
	}

	public void setID(final long stayID) {
		this.stayID = stayID;
	}

	public Timestamp getEndTimestamp() {
		return this.endTimestamp;
	}

	public void setEndTimestamp(final Timestamp endTimestamp) {
		this.endTimestamp = endTimestamp;
	}

	public Hospital getHospital() {
		return this.hospital;
	}

	public void setHospital(final Hospital hospital) {
		this.hospital = hospital;
	}

	public HospitalEmployee getResponsibleDoctor() {
		return this.responsibleDoctor;
	}

	public void setResponsibleDoctor(final HospitalEmployee responsibleDoctor) {
		this.responsibleDoctor = responsibleDoctor;
	}

	public Room getRoom() {
		return this.room;
	}

	public void setRoom(final Room room) {
		this.room = room;
	}

	public List<Treatment> getTreatments() {
		return this.treatments;
	}

	public void setTreatments(final List<Treatment> treatments) {
		this.treatments = treatments;
	}

	public Treatment addTreatment(final Treatment treatment) {
		this.getTreatments().add(treatment);
		return treatment;
	}

	public Treatment removeTreatment(final Treatment treatment) {
		this.getTreatments().remove(treatment);
		return treatment;
	}

	public List<Diagnostics> getMedicalRecords() {
		return this.medicalRecords;
	}

	public void setMedicalRecords(final List<Diagnostics> medicalRecords) {
		this.medicalRecords = medicalRecords;
	}

	public Diagnostics addMedicalRecord(final Diagnostics diagnostics) {
		this.getMedicalRecords().add(diagnostics);
		return diagnostics;
	}

	public Diagnostics removeMedicalRecord(final Diagnostics diagnostics) {
		this.getMedicalRecords().remove(diagnostics);
		return diagnostics;
	}

	public Timestamp getStartTimestamp() {
		return this.startTimestamp;
	}

	public void setStartTimestamp(final Timestamp startTimestamp) {
		this.startTimestamp = startTimestamp;
	}
}