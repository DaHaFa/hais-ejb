package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Hospital;


@Remote
public interface HospitalService extends CrudService<Long, Hospital> {

}
