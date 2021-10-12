package com.lmx.entity;

public class User {
    private int id;                  //id
    private String userNo;           //用户编号
    private String password;         //用户密码
    private int permission;          //类型

    public User() {
        super();
        // TODO Auto-generated constructor stub
    }
    public User(int id, String userNo, String password, int permission) {
        this.id = id;
        this.userNo = userNo;
        this.password = password;
        this.permission = permission;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getUserNo() {
        return userNo;
    }
    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public int getPermission() {
        return permission;
    }
    public void setPermission(int permission) {
        this.permission = permission;
    }

    @Override
    public String toString() {
        return "User [userNo=" + userNo + ", password=" + password + ", permission=" + permission + "]";
    }
}
