package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.HealthInsurance;


@Remote
public interface HealthInsuranceService extends CrudService<String, HealthInsurance> {

}
