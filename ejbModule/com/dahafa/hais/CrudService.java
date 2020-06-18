package com.dahafa.hais;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Remove;


@Remote
public interface CrudService<K, E extends Identifiable<K>> {

	void create(E entity);

	E retrieve(K primaryKey) throws NoSuchRowException;

	void update(E entity) throws NoSuchRowException;

	void delete(E entity) throws NoSuchRowException;

	List<E> list();

	void save(E entity);

	@Remove
	void checkout();

}
