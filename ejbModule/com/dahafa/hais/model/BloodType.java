package com.dahafa.hais.model;

public enum BloodType {
	A_RH_POS("A RH POS"),
	ZERO_RH_POS("0 RH POS"),
	B_RH_POS("B RH POS"),
	AB_RH_POS("AB RH POS"),
	AB_RH_NEG("AB RH NEG"),
	B_RH_NEG("B RH NEG"),
	ZERO_RH_NEG("0 RH NEG"),
	A_RH_NEG("A RH NEG")
	;

	private String description;

	private BloodType(final String description) {
		this.description = description;
	}

	public static BloodType of(final String description) {
		for(final BloodType bloodType : BloodType.values())
			if(description.equals(bloodType.description))
				return bloodType;

		return null;
	}

	public String getDescription() {
		return this.description;
	}
}
