package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Material;


@Remote
public interface MaterialService extends CrudService<Long, Material> {

}
