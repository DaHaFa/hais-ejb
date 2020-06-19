package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.TreatmentType;


@Remote
public interface TreatmentTypeService extends CrudService<Long, TreatmentType> {

}
