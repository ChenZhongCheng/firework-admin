package cn.fireworkstudio.admin.dto;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 */
public class OrderReqDto extends PageReqDto {

    /**
     * Order Number
     */
    private String orderNo;

    /**
     * Order Type: 1 Online Self-Run 2 Online outsource 3 Offline
     */
    private Integer orderType;

    /**
     * Customer Name
     */
    private String customerName;

    /**
     * Identification Number
     */
    private String customerIdNumber;

    /**
     * Mobile Number
     */
    private String customerMobile;

    /**
     * Sku Code
     */
    private String skuCode;

    /**
     * Start Date
     */
    private String startDate;

    /**
     * End Date
     */
    private String endDate;

    /**
     * Constructor
     */
    public OrderReqDto() {
    }

    public OrderReqDto(Integer reqId, Integer start, Integer rows) {
        super(reqId, start, rows);
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
     * Get orderType
     */
    public Integer getOrderType() {
        return orderType;
    }

    /**
     * Set orderType
     */
    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
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
     * 获得 skuCode
     */
    public String getSkuCode() {
        return skuCode;
    }

    /**
     * 设置 skuCode
     */
    public void setSkuCode(String skuCode) {
        this.skuCode = skuCode;
    }

    /**
     * Get startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * Set startDate
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * Get endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * Set endDate
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
}
