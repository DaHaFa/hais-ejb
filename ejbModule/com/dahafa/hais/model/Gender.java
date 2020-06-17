package com.dahafa.hais.model;

public enum Gender {
	DIVERSE("Diverse"),
	FEMALE("Female"),
	MALE("Male")
	;

	private String description;

	private Gender(final String description) {
		this.description = description;
	}

	public static Gender of(final String description) {
		for(final Gender gender : Gender.values())
			if(description.equals(gender.description))
				return gender;

		return null;
	}

	public String getDescription() {
		return this.description;
	}
}
