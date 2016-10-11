package cn.fireworkstudio.admin.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 */
public class Order implements Serializable {

    /**
     * Primary Key
     */
    private Long id;

    /**
     * Order Number
     */
    private String orderNo;

    /**
     * Customer Name
     */
    private String customerName;

    /**
     * Gender：1 Male 2 Female
     */
    private Integer customerGender;

    /**
     * Identification Number
     */
    private String customerIdNumber;

    /**
     * Mobile Number
     */
    private String customerMobile;

    /**
     * Address
     */
    private String customerAddress;

    /**
     * Zip Code
     */
    private String customerZip;

    /**
     * Money Spent
     */
    private Double cost;

    /**
     * Valid: 1 Yes 0 No
     */
    private Integer valid;

    /**
     * Create Time
     */
    private Date createTime;

    /**
     * Last Update Time
     */
    private Date updateTime;

    /**
     * Create By
     */
    private String createUser;

    /**
     * Update By
     */
    private String updateUser;

    /**
     * Get id
     */
    public Long getId() {
        return id;
    }

    /**
     * Set id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * Get orderNo
     */
    public String getOrderNo() {
        return orderNo;
    }

    /**
     * Set orderNo
     */
    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    /**
     * Get customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * Set customerName
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * Get customerGender
     */
    public Integer getCustomerGender() {
        return customerGender;
    }

    /**
     * Set customerGender
     */
    public void setCustomerGender(Integer customerGender) {
        this.customerGender = customerGender;
    }

    /**
     * Get customerIdNumber
     */
    public String getCustomerIdNumber() {
        return customerIdNumber;
    }

    /**
     * Set customerIdNumber
     */
    public void setCustomerIdNumber(String customerIdNumber) {
        this.customerIdNumber = customerIdNumber;
    }

    /**
     * Get customerMobile
     */
    public String getCustomerMobile() {
        return customerMobile;
    }

    /**
     * Set customerMobile
     */
    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }

    /**
     * Get customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     * Set customerAddress
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    /**
     * Get customerZip
     */
    public String getCustomerZip() {
        return customerZip;
    }

    /**
     * Set customerZip
     */
    public void setCustomerZip(String customerZip) {
        this.customerZip = customerZip;
    }

    /**
     * Get cost
     */
    public Double getCost() {
        return cost;
    }

    /**
     * Set cost
     */
    public void setCost(Double cost) {
        this.cost = cost;
    }

    /**
     * Get valid
     */
    @JsonIgnore
    public Integer getValid() {
        return valid;
    }

    /**
     * Set valid
     */
    public void setValid(Integer valid) {
        this.valid = valid;
    }

    /**
     * Get createTime
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * Set createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * Get updateTime
     */
    @JsonIgnore
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * Set updateTime
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * Get createUser
     */
    @JsonIgnore
    public String getCreateUser() {
        return createUser;
    }

    /**
     * Set createUser
     */
    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    /**
     * Get updateUser
     */
    @JsonIgnore
    public String getUpdateUser() {
        return updateUser;
    }

    /**
     * Set updateUser
     */
    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }
}
