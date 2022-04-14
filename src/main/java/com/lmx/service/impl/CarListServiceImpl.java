package com.lmx.service.impl;

import com.lmx.dao.ICarListDao;
import com.lmx.entity.Car;
import com.lmx.entity.CarList;
import com.lmx.service.ICarListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class CarListServiceImpl implements ICarListService {
    @Autowired
    private ICarListDao carListDao;

    public CarList getSumOfCar(int id) {
        CarList currentCarList = carListDao.getSumOfCar(id);
        return currentCarList;
    }
    
    //
    public Map<String, Car> getOneCarlist(int id) {
        Map<String, Car> currentOneCarList = carListDao.getOneCarList(id);
        return currentOneCarList;
    }
}
