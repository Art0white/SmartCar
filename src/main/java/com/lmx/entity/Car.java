package com.lmx.entity;

public class Car {
    private int id;           //id
    private String carNo;     //小车编号
    private int state;        //小车状态

    public Car() {
        super();
        // TODO Auto-generated constructor stub
    }
    public Car(int id, String carNo, int state) {
        this.id = id;
        this.carNo = carNo;
        this.state = state;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getCarNo() {
        return carNo;
    }
    public void setCarNo(String carNo) {
        this.carNo = carNo;
    }

    public int getState() {
        return state;
    }
    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", carNo='" + carNo + '\'' +
                ", state=" + state +
                '}';
    }
}
