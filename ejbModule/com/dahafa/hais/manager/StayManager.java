package com.dahafa.hais.manager;

import java.util.List;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.Query;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Person;
import com.dahafa.hais.model.Stay;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class StayManager extends CrudManager<Long, Stay> implements StayService {

	@Override
	public List<Person> listPatientsByRoom(final long roomID) {
		final String statement = "select m.person " +
						   		 "from Stay s left join s.medicalRecords m " +
						   		 "where s.room.roomID = :roomID " +
						   		 "and s.endTimestamp = null";

		final Query query = this.manager.createQuery(statement);
		query.setParameter("roomID", roomID);


		return query.getResultList();
	}

}
