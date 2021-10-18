package com.lmx.entity;

import java.util.Date;

public class Equipment {
    private int id;                //id
    private String equipmentNo;    //设备编号
    private int state;             //设备状态
    private Date updateTime;       //状态更新时间

    public Equipment() {
    }
    public Equipment(int id, String equipmentNo, int state, Date updateTime) {
        this.id = id;
        this.equipmentNo = equipmentNo;
        this.state = state;
        this.updateTime = updateTime;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getEquipmentNo() {
        return equipmentNo;
    }
    public void setEquipmentNo(String equipmentNo) {
        this.equipmentNo = equipmentNo;
    }

    public int getState() {
        return state;
    }
    public void setState(int state) {
        this.state = state;
    }

    public Date getUpdateTime() {
        return updateTime;
    }
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Equipment{" +
                "id=" + id +
                ", equipmentNo='" + equipmentNo + '\'' +
                ", state=" + state +
                ", updateTime=" + updateTime +
                '}';
    }

}
