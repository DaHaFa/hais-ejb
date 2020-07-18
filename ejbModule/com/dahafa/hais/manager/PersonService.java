package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Person;


@Remote
public interface PersonService extends CrudService<String, Person> {

}
