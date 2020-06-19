package com.dahafa.hais.manager;

import javax.ejb.Remote;

import com.dahafa.hais.CrudService;
import com.dahafa.hais.model.Room;


@Remote
public interface RoomService extends CrudService<Long, Room> {

}
