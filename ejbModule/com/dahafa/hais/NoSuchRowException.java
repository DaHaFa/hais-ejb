package com.dahafa.hais;

public class NoSuchRowException extends Exception {
	private static final long serialVersionUID = 1L;

	public NoSuchRowException(final String message, final Throwable cause) {
		super(message, cause);
	}

	public NoSuchRowException(final String message) {
		super(message);
	}
}
