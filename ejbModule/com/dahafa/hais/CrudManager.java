package com.dahafa.hais;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;


@Stateful
@Remote(CrudService.class)
@TransactionManagement(TransactionManagementType.CONTAINER)
public abstract class CrudManager<K, E extends Identifiable<K>> implements CrudService<K, E> {

	@PersistenceContext(unitName = Constants.PERSISTENCE_UNIT)
	private EntityManager manager;


	@SuppressWarnings("unchecked")
	protected Class<E> getEntityType() {
		final Type genericType = this.getClass().getGenericSuperclass();

		if(!(genericType instanceof ParameterizedType))
			return null;

		final ParameterizedType type = (ParameterizedType) genericType;
		final Type[] types =  type.getActualTypeArguments();

		if(!(types[1] instanceof Class))
			return null;

		return (Class<E>) types[1];
	}


	@Override
	public void create(final E entity) {
		final E temp = this.manager.find(this.getEntityType(), entity.getID());

		if(temp == null)
			this.manager.persist(entity);
	}

	@Override
	public E retrieve(final K primaryKey) throws NoSuchRowException {
		final E entity = this.manager.find(this.getEntityType(), primaryKey);

		if(entity == null)
			throw new NoSuchRowException("The entity with the ID '" + primaryKey + "' doesn't exist");

		return entity;
	}

	@Override
	public void update(final E entity) throws NoSuchRowException {
		final E temp = this.manager.find(this.getEntityType(), entity.getID());

		if(temp == null)
			throw new NoSuchRowException("The entity with the ID '" + entity.getID() + "' doesn't exist");

		this.manager.merge(entity);
	}

	@Override
	public void delete(final E entity) throws NoSuchRowException {
		final E temp = this.manager.find(this.getEntityType(), entity.getID());

		if(temp == null)
			throw new NoSuchRowException("The entity with the ID '" + entity.getID() + "' doesn't exist");

		this.manager.remove(this.manager.merge(entity));
	}

	@Override
	public List<E> list() {
		final Class<E> entityType = this.getEntityType();

		final String queryname = String.format("%s.findAll", entityType.getSimpleName());

		final TypedQuery<E> query = this.manager.createNamedQuery(queryname, entityType);

		return query.getResultList();
	}

	@Override
	public void save(final E entity) {
		try {
			final E temp = this.manager.find(this.getEntityType(), entity.getID());

			if(temp == null)
				this.create(entity);
			else
				this.update(entity);

		} catch (final NoSuchRowException exception) {

			// This can't happen since this method checks if the entity exists or not
			// and calls the right method for each case.
		}
	}

	@Override
	public void checkout() {}
}
