package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;


@Entity
@NamedQuery(name="AuthorizationRole.findAll", query="SELECT a FROM AuthorizationRole a")
public class AuthorizationRole implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="AuthorizationRoleGenerator")
	@SequenceGenerator(name="AuthorizationRoleGenerator",
		sequenceName="AuthorizationRoleSequence", allocationSize=1)
	private long authorizationRoleID;

	private String name;


	public long getAuthorizationRoleID() {
		return this.authorizationRoleID;
	}

	public void setAuthorizationRoleID(final long authorizationRoleID) {
		this.authorizationRoleID = authorizationRoleID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}
}