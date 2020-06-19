package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Floor;


@Remote
public interface FloorService extends CrudService<Long, Floor> {

}
