package com.lmx.service.impl;

import com.lmx.dao.IEquipmentDao;
import com.lmx.entity.Equipment;
import com.lmx.service.IEquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipmentServiceImpl implements IEquipmentService {
    @Autowired
    private IEquipmentDao equipmentDao;

    public Equipment getStatus(String equipmentNo) {
        // TODO Auto-generated method stub
        Equipment currentEquipment = equipmentDao.getStatus(equipmentNo);
        return currentEquipment;
    }

    public Equipment getUpdateTime(String equipmentNo) {
        // TODO Auto-generated method stub
        Equipment currentEquipment = equipmentDao.getUpdateTime(equipmentNo);
        return currentEquipment;
    }

    public List<Equipment> efindAll() {
        // TODO Auto-generated method stub
        List<Equipment> equipmentList = equipmentDao.efindAll();
        return equipmentList;
    }
}
