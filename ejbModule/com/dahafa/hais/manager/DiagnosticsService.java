package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Diagnostics;


@Remote
public interface DiagnosticsService extends CrudService<Long, Diagnostics> {

}
