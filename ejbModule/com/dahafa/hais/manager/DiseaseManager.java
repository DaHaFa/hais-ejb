package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Disease;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class DiseaseManager extends CrudManager<Long, Disease> implements DiseaseService {

}
