package com.lmx.entity;

import java.util.Date;

public class Worker {
    private int id;
    private String workerNo;
    private String workName;
    private String sex;

    public Worker() {
        super();
        // TODO Auto-generated constructor stub
    }
    public Worker(int id, String workerNo, String workName, String sex) {
        this.id = id;
        this.workerNo = workerNo;
        this.workName = workName;
        this.sex = sex;
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
    public String getWorkName() {
        return workName;
    }
    public void setWorkName(String workName) {
        this.workName = workName;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Worker{" +
                "id=" + id +
                ", workerNo='" + workerNo + '\'' +
                ", workName='" + workName + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }
}