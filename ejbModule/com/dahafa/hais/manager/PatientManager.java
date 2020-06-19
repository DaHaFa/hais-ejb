package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Patient;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class PatientManager extends CrudManager<String, Patient> implements PatientService {

}
