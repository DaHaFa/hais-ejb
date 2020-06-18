package com.dahafa.hais.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
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
@NamedQuery(name="TreatmentType.findAll", query="SELECT t FROM TreatmentType t")
public class TreatmentType implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="TreatmentTypeGenerator")
	@SequenceGenerator(name="TreatmentTypeGenerator",
		sequenceName="TreatmentTypeSequence", allocationSize=1)
	private long treatmentTypeID;

	@OneToMany
	@JoinColumn(name="TREATMENTTYPE")
	private List<BillOfMaterial> billOfMaterials;

	@OneToMany
	@JoinColumn(name="TREATMENTACTION")
	private List<TreatmentSchedule> steps;

	@ManyToMany
	@JoinTable(name="AUTHORIZATION", joinColumns={@JoinColumn(name="TREATMENTTYPE")},
		inverseJoinColumns={@JoinColumn(name="AUTHORIZATIONROLE")})
	private List<AuthorizationRole> authorizationRoles;

	private String name;
	private double averageDuration;
	private String averageDurationUOM;


	@Override
	public Long getID() {
		return this.treatmentTypeID;
	}

	public void setID(final long treatmentTypeID) {
		this.treatmentTypeID = treatmentTypeID;
	}

	public double getAverageDuration() {
		return this.averageDuration;
	}

	public void setAverageDuration(final double averageDuration) {
		this.averageDuration = averageDuration;
	}

	public TimeUnit getAverageDurationUOM() {
		return TimeUnit.valueOf(this.averageDurationUOM);
	}

	public void setAverageDurationUOM(final TimeUnit averageDurationUOM) {
		this.averageDurationUOM = averageDurationUOM.name();
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public List<BillOfMaterial> getBillOfMaterials() {
		return this.billOfMaterials;
	}

	public void setBillOfMaterials(final List<BillOfMaterial> billOfMaterials) {
		this.billOfMaterials = billOfMaterials;
	}

	public BillOfMaterial addBillOfMaterial(final BillOfMaterial billOfMaterial) {
		this.getBillOfMaterials().add(billOfMaterial);
		return billOfMaterial;
	}

	public BillOfMaterial removeBillOfMaterial(final BillOfMaterial billOfMaterial) {
		this.getBillOfMaterials().remove(billOfMaterial);
		return billOfMaterial;
	}

	public List<TreatmentSchedule> getSteps() {
		return this.steps;
	}

	public void setSteps(final List<TreatmentSchedule> steps) {
		this.steps = steps;
	}

	public TreatmentSchedule addTreatmentSchedule(final TreatmentSchedule treatmentSchedule) {
		this.getSteps().add(treatmentSchedule);
		return treatmentSchedule;
	}

	public TreatmentSchedule removeTreatmentSchedule(final TreatmentSchedule treatmentSchedule) {
		this.getSteps().remove(treatmentSchedule);
		return treatmentSchedule;
	}

	public List<AuthorizationRole> getAuthorizationRoles() {
		return this.authorizationRoles;
	}

	public void setAuthorizationRoles(final List<AuthorizationRole> authorizationRoles) {
		this.authorizationRoles = authorizationRoles;
	}

	public AuthorizationRole addAuthorizationRole(final AuthorizationRole authorizationRole) {
		this.getAuthorizationRoles().add(authorizationRole);
		return authorizationRole;
	}

	public AuthorizationRole removeAuthorizationRole(final AuthorizationRole authorizationRole) {
		this.getAuthorizationRoles().remove(authorizationRole);
		return authorizationRole;
	}
}