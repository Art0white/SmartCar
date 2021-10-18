package com.lmx.dao;

import com.lmx.entity.Equipment;

import java.util.List;

public interface IEquipmentDao {
    Equipment queryById(int id);

    Equipment getEquipmentNo(Equipment equipment);

    Equipment getStatus(String equipmentNo);

    Equipment getUpdateTime(String equipmentNo);

    List<Equipment> efindAll();
}
