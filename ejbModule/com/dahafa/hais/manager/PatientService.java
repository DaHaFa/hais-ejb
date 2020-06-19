package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Patient;


@Remote
public interface PatientService extends CrudService<String, Patient> {

}
