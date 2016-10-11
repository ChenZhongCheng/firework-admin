package cn.fireworkstudio.admin.dao;

import cn.fireworkstudio.admin.bean.Order;
import cn.fireworkstudio.admin.dto.OrderReqDto;

import java.util.List;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 */
public interface OrderDao {

    /**
     * Add new order
     *
     * @param order order
     * @return new order's primary key
     */
    long addOrder(Order order);

    /**
     * Search orders
     *
     * @param reqDto search criteria
     * @return orders found
     */
    List<Order> searchOrder(OrderReqDto reqDto);

    /**
     * Get order count
     *
     * @param reqDto search criteria
     * @return order count
     */
    int searchOrderCount(OrderReqDto reqDto);
}
