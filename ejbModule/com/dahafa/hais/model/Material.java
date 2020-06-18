package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="Material.findAll", query="SELECT m FROM Material m")
public class Material implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="MaterialGenerator")
	@SequenceGenerator(name="MaterialGenerator",
		sequenceName="MaterialSequence", allocationSize=1)
	private long materialID;

	private String name;
	private double stock;
	private String uom;


	@Override
	public Long getID() {
		return this.materialID;
	}

	public void setID(final long materialID) {
		this.materialID = materialID;
	}

	public String getName() {
		return this.name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public double getStock() {
		return this.stock;
	}

	public void setStock(final double stock) {
		this.stock = stock;
	}

	public String getUom() {
		return this.uom;
	}

	public void setUom(final String uom) {
		this.uom = uom;
	}
}