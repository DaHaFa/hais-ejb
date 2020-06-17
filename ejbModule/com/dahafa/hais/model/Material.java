package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;


@Entity
@NamedQuery(name="Material.findAll", query="SELECT m FROM Material m")
public class Material implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,
		generator="MaterialGenerator")
	@SequenceGenerator(name="MaterialGenerator",
		sequenceName="MaterialSequence", allocationSize=1)
	private long materialID;

	private double stock;
	private String uom;


	public long getMaterialID() {
		return this.materialID;
	}

	public void setMaterialID(final long materialID) {
		this.materialID = materialID;
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