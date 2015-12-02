package com.mkyong.common.controller;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by sachithra on 21/11/15.
 */
@Document(collection="customer")
public class Customer {

    @Id
    public String id;
    public String type;
    public String userName;
    public String NameSinhala;
    public String NameTamil;
    public String NIC;
    public boolean active;
    public String user;
    public String password;
    public String confpassword;
    public String startDate;
    public String regDate;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getConfpassword() {
        return confpassword;
    }

    public void setConfpassword(String confpassword) {
        this.confpassword = confpassword;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNameSinhala() {
        return NameSinhala;
    }

    public void setNameSinhala(String nameSinhala) {
        NameSinhala = nameSinhala;
    }

    public String getNameTamil() {
        return NameTamil;
    }

    public void setNameTamil(String nameTamil) {
        NameTamil = nameTamil;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}


