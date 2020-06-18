package com.dahafa.hais.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;

import com.dahafa.hais.Identifiable;


@Entity
@NamedQuery(name="BillOfMaterial.findAll", query="SELECT b FROM BillOfMaterial b")
public class BillOfMaterial implements Serializable, Identifiable<BillOfMaterialID> {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private BillOfMaterialID billOfMaterialID;

	@ManyToOne
	@JoinColumn(name="MATERIAL")
	private Material material;

	private double quantity;


	@Override
	public BillOfMaterialID getID() {
		return this.billOfMaterialID;
	}

	public void setID(final BillOfMaterialID billOfMaterialID) {
		this.billOfMaterialID = billOfMaterialID;
	}

	public double getQuantity() {
		return this.quantity;
	}

	public void setQuantity(final double quantity) {
		this.quantity = quantity;
	}

	public Material getMaterial() {
		return this.material;
	}

	public void setMaterial(final Material material) {
		this.material = material;
	}
}
