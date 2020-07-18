package com.dahafa.hais.manager;

import java.util.List;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Person;
import com.dahafa.hais.model.Stay;


@Remote
public interface StayService extends CrudService<Long, Stay> {

	List<Person> listPatientsByRoom(long roomID);

}
