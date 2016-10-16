'use strict';

/**
 * Copyright: 2016 FireworkStudio
 **
 * Author:  Daniel Kong
 */

adminApp.factory('orderService', ['restProxyService', 'API_PROVIDER', 'API_END_POINT',
    function (restProxyService, API_PROVIDER, API_END_POINT) {

        var orderId;

        /**
         * Functions provided
         */
        return {
            getOrderList: function (params) {
                return restProxyService.sendHttpGet(API_PROVIDER, API_END_POINT + '/order/list', params);
            },
            getOrderInfo: function (params) {
                return restProxyService.sendHttpGet(API_PROVIDER, API_END_POINT + '/order/info', params);
            },

            /**
             * Getter & Setter
             */
            getOrderId: function () {
                return orderId;
            },
            setOrderId: function (aOrderId) {
                orderId = aOrderId;
            }
        }
    }
]);