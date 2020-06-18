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
@NamedQuery(name="Diagnostics.findAll", query="SELECT d FROM Diagnostics d")
public class Diagnostics implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="DiagnosticsGenerator")
	@SequenceGenerator(name="DiagnosticsGenerator",
		sequenceName="DiagnosticsSequence", allocationSize=1)
	private long diagnosticsID;

	@ManyToOne
	@JoinColumn(name="EMPLOYEE")
	private HospitalEmployee doctor;

	@ManyToOne
	@JoinColumn(name="DISEASE")
	private Disease disease;

	@ManyToOne
	@JoinColumn(name="PERSON")
	private Person person;

	private Timestamp diagnosticTimestamp;


	@Override
	public Long getID() {
		return this.diagnosticsID;
	}

	public void setID(final long diagnosticsID) {
		this.diagnosticsID = diagnosticsID;
	}

	public Timestamp getDiagnosticTimestamp() {
		return this.diagnosticTimestamp;
	}

	public void setDiagnosticTimestamp(final Timestamp diagnosticTimestamp) {
		this.diagnosticTimestamp = diagnosticTimestamp;
	}

	public HospitalEmployee getDoctor() {
		return this.doctor;
	}

	public void setDoctor(final HospitalEmployee doctor) {
		this.doctor = doctor;
	}

	public Disease getDisease() {
		return this.disease;
	}

	public void setDisease(final Disease disease) {
		this.disease = disease;
	}

	public Person getPerson() {
		return this.person;
	}

	public void setPerson(final Person person) {
		this.person = person;
	}
}