package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.HospitalEmployee;


@Remote
public interface HospitalEmployeeService extends CrudService<String, HospitalEmployee> {

}
