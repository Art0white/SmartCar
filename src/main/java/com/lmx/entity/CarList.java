package com.lmx.entity;

import java.util.Map;

public class CarList {
    private int id;
    private int sumofcar;                //车辆总和
    private Map<String, Car> onecarlist;    //小车列表

    public CarList() {
        super();
        // TODO Auto-generated constructor stub
    }
    public CarList(int id, int sumofcar, Map<String, Car> onecarlist) {
        this.id = id;
        this.sumofcar = sumofcar;
        this.onecarlist = onecarlist;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getSumofcar() {
        return sumofcar;
    }
    public void setSumofcar(int sumofcar) {
        this.sumofcar = sumofcar;
    }

    public Map<String, Car> getCarList() {
        return onecarlist;
    }
    public void setCarList(Map<String, Car> carList) {
        onecarlist = carList;
    }

    @Override
    public String toString() {
        return "CarList{" +
                "id=" + id +
                ", sumofcar=" + sumofcar +
                ", CarList=" + onecarlist +
                '}';
    }
}
