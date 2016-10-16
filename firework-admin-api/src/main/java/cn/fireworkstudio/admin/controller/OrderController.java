package cn.fireworkstudio.admin.controller;

import cn.fireworkstudio.admin.bean.Order;
import cn.fireworkstudio.admin.constant.StringConstant;
import cn.fireworkstudio.admin.dao.OrderDao;
import cn.fireworkstudio.admin.dto.OrderReqDto;
import cn.fireworkstudio.admin.enums.Gender;
import cn.fireworkstudio.admin.enums.OrderType;
import cn.fireworkstudio.admin.util.PageRespJson;
import cn.fireworkstudio.admin.util.RespJson;
import cn.fireworkstudio.admin.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Copyright: 2016 FireworkStudio
 * *
 * Author:  Daniel Kong
 * Desc:    Order controller
 */
@RestController
public class OrderController {

    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    // You may encapsulate methods' of orderDao in OrderService and autowire it here
    @Autowired
    private OrderDao orderDao;

    /**
     * Select orders by search criteria
     *
     * @param reqId            request id
     * @param start            limit a, b 's 1st part
     * @param rows             limit a,b's 2nd part
     * @param orderNo          order number
     * @param customerName     customer name
     * @param customerMobile   customer mobile
     * @param customerIdNumber customer id number
     * @param startDate        start date
     * @param endDate          end date
     * @return order list found
     */
    @RequestMapping(value = "/order/list", method = RequestMethod.GET)
    public PageRespJson selectOrderList(@RequestParam(value = "reqId", required = false, defaultValue = StringConstant.ZERO) Integer reqId,
                                        @RequestParam(value = "start", required = false) Integer start,
                                        @RequestParam(value = "rows", required = false) Integer rows,
                                        @RequestParam(value = "orderNo", required = false) String orderNo,
                                        @RequestParam(value = "orderType", required = false) Integer orderType,
                                        @RequestParam(value = "customerName", required = false) String customerName,
                                        @RequestParam(value = "customerMobile", required = false) String customerMobile,
                                        @RequestParam(value = "customerIdNumber", required = false) String customerIdNumber,
                                        @RequestParam(value = "skuCode", required = false) String skuCode,
                                        @RequestParam(value = "startDate", required = false) String startDate,
                                        @RequestParam(value = "endDate", required = false) String endDate) {

        // Construct request bean
        OrderReqDto reqDto = new OrderReqDto(reqId, start, rows);
        reqDto.setOrderNo(orderNo);
        reqDto.setOrderType(orderType);
        reqDto.setCustomerName(customerName);
        reqDto.setCustomerMobile(customerMobile);
        reqDto.setCustomerIdNumber(customerIdNumber);
        reqDto.setSkuCode(skuCode);
        reqDto.setStartDate(startDate);
        reqDto.setEndDate(endDate);

        try {
            List<Order> orderList = orderDao.searchOrder(reqDto);
            int count = orderDao.searchOrderCount(reqDto);
            return PageRespJson.buildSuccessResponse(orderList, reqId, count);
        } catch (Exception e) {
            e.printStackTrace();
            return PageRespJson.buildFailureResponse(StringUtils.getValidString(e.getMessage()), reqId);
        }
    }

    /**
     * Search order info by primary key
     *
     * @param id order id
     * @return order info
     */
    @RequestMapping(value = "/order/info", method = RequestMethod.GET)
    public RespJson selectOrderInfo(@RequestParam(value = "id", required = false) long id) {

        try {
            Order order = orderDao.searchById(id);
            order.setOrderTypeName(OrderType.getByCode(order.getOrderType()).getDesc());
            order.setCustomerGenderName(Gender.getByCode(order.getCustomerGender()).getDesc());
            return RespJson.buildSuccessResponse(order);
        } catch (Exception e) {
            e.printStackTrace();
            return RespJson.buildFailureResponse(StringUtils.getValidString(e.getMessage()));
        }
    }
}
