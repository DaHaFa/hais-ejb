package com.dahafa.hais.manager;

import javax.ejb.Stateful;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

import com.dahafa.hais.CrudManager;
import com.dahafa.hais.model.Address;


@Stateful
@TransactionManagement(TransactionManagementType.CONTAINER)
public class AddressManager extends CrudManager<Long, Address> implements AddressService {

}
