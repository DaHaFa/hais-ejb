package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Stay;


@Remote
public interface StayService extends CrudService<Long, Stay> {

}
