package com.lmx.dao;

import com.lmx.entity.Car;
import com.lmx.entity.CarList;

import java.util.Map;

public interface ICarListDao {
    CarList getSumOfCar(int id);

    Map<String, Car> getOneCarList(int id);
}
