package cn.fireworkstudio.admin.dao;

import cn.fireworkstudio.admin.bean.Order;
import cn.fireworkstudio.admin.constant.StringConstant;
import cn.fireworkstudio.admin.dto.OrderReqDto;
import cn.fireworkstudio.admin.enums.Gender;
import com.alibaba.fastjson.JSON;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static junit.framework.TestCase.assertTrue;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 * Desc:    Test Case Of RoleDao
 */
@ContextConfiguration(locations = {"classpath:/config/test-spring-config.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestOrderDao {

    private static final Logger logger = LoggerFactory.getLogger(TestOrderDao.class);

    @Autowired
    private OrderDao orderDao;

    @Test
    public void testAddOrder() throws Exception {
        Order order = new Order();
        order.setOrderNo("OF2016100100001");
        order.setCustomerName("Tom");
        order.setCustomerGender(Gender.MALE.getCode());
        order.setCustomerIdNumber("0241000321312");
        order.setCustomerMobile("13100000001");
        order.setCustomerAddress("Street1, A district, B city, C Province");
        order.setCustomerZip("10001");
        order.setCost(10.5);
        order.setValid(1);
        order.setCreateUser(StringConstant.SYSTEM);
        assertTrue(orderDao.addOrder(order) > 0);
    }

    @Test
    public void testSearchOrder() throws Exception {
        OrderReqDto reqDto = new OrderReqDto();
        reqDto.setOrderNo("OF2016100100001");
        reqDto.setCustomerName("Tom");
        reqDto.setCustomerMobile("13100000001");
        reqDto.setCustomerIdNumber("0241000321312");
        reqDto.setStartDate("2016-10-01");
        reqDto.setEndDate("2016-10-01");
        reqDto.setStart(0);
        reqDto.setRows(10);

        List<Order> orderList = orderDao.searchOrder(reqDto);
        logger.info(JSON.toJSONString(orderList));
    }

    @Test
    public void testSearchOrderCount() throws Exception {
        OrderReqDto reqDto = new OrderReqDto();
        reqDto.setOrderNo("OF2016100100001");
        reqDto.setCustomerName("Tom");
        reqDto.setCustomerMobile("13100000001");
        reqDto.setCustomerIdNumber("0241000321312");
        reqDto.setStartDate("2016-10-01");
        reqDto.setEndDate("2016-10-01");

        int orderCount = orderDao.searchOrderCount(reqDto);
        logger.info("Order count: " + orderCount);
    }
}
