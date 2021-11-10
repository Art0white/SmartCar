package com.lmx.entity;

import java.util.Date;

public class Worker {
    private int id;
    private String workerNo;
    private String workerName;
    private int age;
    private String sex;
    private Date creationTime;      //账户创建时间
    private Date lastModifyTime;    //账户修改时间
    private CarList carList;        //拥有的小车列表

    public Worker() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Worker(int id, String workerNo, String workerName, int age, String sex, Date creationTime, Date lastModifyTime, CarList carList) {
        this.id = id;
        this.workerNo = workerNo;
        this.workerName = workerName;
        this.age = age;
        this.sex = sex;
        this.creationTime = creationTime;
        this.lastModifyTime = lastModifyTime;
        this.carList = carList;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getWorkerNo() {
        return workerNo;
    }
    public void setWorkerNo(String workerNo) {
        this.workerNo = workerNo;
    }
    public String getWorkerName() {
        return workerName;
    }
    public void setWorkerName(String workerName) {
        this.workerName = workerName;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public Date getCreationTime() {
        return creationTime;
    }
    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }
    public Date getLastModifyTime() {
        return lastModifyTime;
    }
    public void setLastModifyTime(Date lastModifyTime) {
        this.lastModifyTime = lastModifyTime;
    }
    public CarList getCarList() {
        return carList;
    }
    public void setCarList(CarList carList) {
        this.carList = carList;
    }

    @Override
    public String toString() {
        return "Worker{" +
                "id=" + id +
                ", workerNo='" + workerNo + '\'' +
                ", workerName='" + workerName + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", creationTime=" + creationTime +
                ", lastModifyTime=" + lastModifyTime +
                ", carList=" + carList +
                '}';
    }
}