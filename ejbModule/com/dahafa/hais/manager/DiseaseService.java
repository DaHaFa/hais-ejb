package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Disease;


@Remote
public interface DiseaseService extends CrudService<Long, Disease> {

}
