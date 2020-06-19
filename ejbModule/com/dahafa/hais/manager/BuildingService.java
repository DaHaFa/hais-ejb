package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Building;


@Remote
public interface BuildingService extends CrudService<Long, Building> {

}
