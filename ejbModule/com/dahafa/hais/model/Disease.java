package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;


@Entity
@NamedQuery(name="Disease.findAll", query="SELECT d FROM Disease d")
public class Disease implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="DiseaseGenerator")
	@SequenceGenerator(name="DiseaseGenerator",
		sequenceName="DiseaseSequence", allocationSize=1)
	private long diseaseID;

	private String description;
	private String name;


	public long getDiseaseID() {
		return this.diseaseID;
	}

	public void setDiseaseID(final long diseaseID) {
		this.diseaseID = diseaseID;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}
}