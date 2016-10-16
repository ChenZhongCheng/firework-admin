/**
 * Copyright: 2016 FireworkStudio
 **
 * Author:  Daniel Kong
 */

adminApp.controller('onlineSelfRunModalController', ['$scope', '$rootScope', '$modalInstance', 'orderService', 'Popup',
    function ($scope, $rootScope, $modalInstance, orderService, Popup) {

        /**
         * Get order info by id
         */
        $scope.getOrderInfo = function(){
            $rootScope.loadingPromise = orderService.getOrderInfo({
                id: orderService.getOrderId()
            }).success(function (resp) {
                if (resp && (resp.code === '1')) {
                    $scope.order = resp.data;
                } else
                    Popup.alert(resp.msg ? resp.msg : 'Get order failed');
            }, function (err) {
                Popup.alert('Fail to get order info');
            });
        };

        $scope.getOrderInfo();

        /**
         * Close event handler
         */
        $scope.close = function () {
            $modalInstance.dismiss('close');
        };
    }
]);
