package com.lmx.dao;

import com.lmx.entity.Car;

public interface ICarDao {
    Car queryById(int id);

    Car getCarNo(Car car);

    Car getStatus(String carNo);
}
