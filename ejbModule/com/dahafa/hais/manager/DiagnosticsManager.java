package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Diagnostics;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class DiagnosticsManager extends CrudManager<Long, Diagnostics> implements DiagnosticsService {

}
