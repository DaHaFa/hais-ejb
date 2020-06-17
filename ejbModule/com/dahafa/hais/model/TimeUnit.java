package com.dahafa.hais.model;

public enum TimeUnit {
	SECONDS("s", "Seconds"),
	MINUTES("min", "Minutes"),
	HOURS("h", "Hours"),
	DAYS("d", "Days"),
	MONTHS("m", "Months"),
	YEARS("y", "Years")
	;

	private String abbreviation;
	private String description;

	private TimeUnit(final String abbreviation, final String description) {
		this.abbreviation = abbreviation;
		this.description = description;
	}

	public static TimeUnit of(final String abbreviation) {
		for(final TimeUnit unit : TimeUnit.values())
			if(abbreviation.equals(unit.abbreviation))
				return unit;

		return null;
	}

	public String getAbbreviation() {
		return this.abbreviation;
	}

	public String getDescription() {
		return this.description;
	}
}
