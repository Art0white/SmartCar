package com.lmx.service.impl;

import com.lmx.dao.ICarDao;
import com.lmx.entity.Car;
import com.lmx.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements ICarService {
    @Autowired
    private ICarDao carDao;

    public Car getStatus(String carNo) {
        Car currentCar =carDao.getStatus(carNo);
        return currentCar;
    }
}
