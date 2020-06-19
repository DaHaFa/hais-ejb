package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Treatment;


@Remote
public interface TreatmentService extends CrudService<Long, Treatment> {

}
