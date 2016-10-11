package cn.fireworkstudio.admin.dao.impl;

import cn.fireworkstudio.admin.bean.Order;
import cn.fireworkstudio.admin.dao.OrderDao;
import cn.fireworkstudio.admin.dto.OrderReqDto;
import com.raycloud.cobarclient.mybatis.spring.MySqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 */
@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {

    private static final String NAMESPACE = "mybatis.mapper.OrderMapper";

    @Resource
    private MySqlSessionTemplate sessionTemplate;

    /**
     * Add new order
     *
     * @param order order
     * @return new order's primary key
     */
    @Override
    public long addOrder(Order order) {
        return sessionTemplate.insert(NAMESPACE + ".addOrder", order);
    }

    /**
     * Search orders
     *
     * @param reqDto search criteria
     * @return orders found
     */
    @Override
    public List<Order> searchOrder(OrderReqDto reqDto) {
        return sessionTemplate.selectList(NAMESPACE + ".searchOrder", reqDto);
    }

    /**
     * Get order count
     *
     * @param reqDto search criteria
     * @return order count
     */
    @Override
    public int searchOrderCount(OrderReqDto reqDto) {
        return sessionTemplate.selectOne(NAMESPACE + ".searchOrderCount", reqDto);
    }
}
