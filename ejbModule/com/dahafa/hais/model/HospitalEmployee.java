package com.dahafa.hais.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;


@Entity
@NamedQuery(name="HospitalEmployee.findAll", query="SELECT h FROM HospitalEmployee h")
public class HospitalEmployee extends Person implements Serializable {
	private static final long serialVersionUID = 1L;

	@Lob
	private byte[] picture;

	@ManyToOne
	@JoinColumn(name="SUPERVISOR")
	private HospitalEmployee supervisor;

	@ManyToMany
	@JoinTable(name="ROLEASSIGNMENT", joinColumns={@JoinColumn(name="EMPLOYEE")},
			inverseJoinColumns={@JoinColumn(name="AUTHORIZATIONROLE")})
	private List<AuthorizationRole> authorizationRoles;


	private double salary;
	private Timestamp startEmployment;
	private Timestamp endEmployment;
	private String typeOfEmployee;


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

	public Timestamp getEndEmployment() {
		return this.endEmployment;
	}

	public void setEndEmployment(final Timestamp endEmployment) {
		this.endEmployment = endEmployment;
	}

	public byte[] getPicture() {
		return this.picture;
	}

	public void setPicture(final byte[] picture) {
		this.picture = picture;
	}

	public double getSalary() {
		return this.salary;
	}

	public void setSalary(final double salary) {
		this.salary = salary;
	}

	public Timestamp getStartEmployment() {
		return this.startEmployment;
	}

	public void setStartEmployment(final Timestamp startEmployment) {
		this.startEmployment = startEmployment;
	}

	public HospitalEmployee getSupervisor() {
		return this.supervisor;
	}

	public void setSupervisor(final HospitalEmployee supervisor) {
		this.supervisor = supervisor;
	}

	public String getTypeOfEmployee() {
		return this.typeOfEmployee;
	}

	public void setTypeOfEmployee(final String typeOfEmployee) {
		this.typeOfEmployee = typeOfEmployee;
	}
}