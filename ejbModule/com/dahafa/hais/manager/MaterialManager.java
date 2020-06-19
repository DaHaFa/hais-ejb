package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Material;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class MaterialManager extends CrudManager<Long, Material> implements MaterialService {

}
