package com.lmx.service;

import com.lmx.entity.Equipment;

import java.util.List;

public interface IEquipmentService {
    public Equipment getStatus(String equipmentNo);

    public Equipment getUpdateTime(String equipmentNo);

    public List<Equipment> efindAll();
}
