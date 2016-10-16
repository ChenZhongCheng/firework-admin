package cn.fireworkstudio.admin.enums;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 * Desc:    Order type
 */
public enum OrderType {

    ONLINE_SELF_RUN(1, "Online Self-Run"),
    ONLINE_OUTSOURCE(2, "Online Outsource"),
    OFFLINE(3, "Offline"),;

    /**
     * enum code
     */
    private final Integer code;

    /**
     * enum description
     */
    private final String desc;

    /**
     * Constructor
     */
    OrderType(Integer code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    /**
     * Get code
     */
    public Integer getCode() {
        return code;
    }

    /**
     * Get desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * Get by code
     */
    public static OrderType getByCode(Integer code) {
        for (OrderType status : values()) {
            if (status.getCode().intValue() == code) {
                return status;
            }
        }
        return null;
    }
}
