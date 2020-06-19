package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Stay;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class StayManager extends CrudManager<Long, Stay> implements StayService {

}
