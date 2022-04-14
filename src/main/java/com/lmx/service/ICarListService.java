package com.lmx.service;

import com.lmx.entity.Car;
import com.lmx.entity.CarList;

import java.util.Map;

public interface ICarListService {

    public CarList getSumOfCar(int id);

    public Map<String, Car> getOneCarlist(int id);
}
