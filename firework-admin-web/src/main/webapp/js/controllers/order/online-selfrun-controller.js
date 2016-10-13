'use strict';

/**
 * Copyright: 2016 FireworkStudio
 **
 * Author:  Daniel Kong
 */
adminApp.controller('onlineSelfRunController', ['$scope', '$rootScope', 'orderService', '$modal', '$compile', 'DTInstances', 'DTOptionsBuilder', 'DTColumnDefBuilder',
    function ($scope, $rootScope, orderService, $modal, $compile, DTInstances, DTOptionsBuilder, DTColumnDefBuilder) {

        var isInit = true;

        $scope.records = {};

        /**
         * Build order number href
         */
        var createOrderNoHref = function (data) {
            return '<a href="" ng-click="viewItem(' + data.id + ')">' + data.orderNo + '</a>';
        };

        /**
         * Columns definition
         */
        $scope.dtColumnDefs = [
            DTColumnDefBuilder.newColumnDef(0).withOption('data', null).renderWith(createOrderNoHref).notSortable(),
            DTColumnDefBuilder.newColumnDef(1).withOption('data', 'customerName').notSortable(),
            DTColumnDefBuilder.newColumnDef(2).withOption('data', 'customerGender').notSortable(),
            DTColumnDefBuilder.newColumnDef(3).withOption('data', 'customerIdNumber').notSortable(),
            DTColumnDefBuilder.newColumnDef(4).withOption('data', 'customerMobile').notSortable(),
            DTColumnDefBuilder.newColumnDef(5).withOption('data', 'customerZip').notSortable(),
            DTColumnDefBuilder.newColumnDef(6).withOption('data', 'cost').notSortable(),
            DTColumnDefBuilder.newColumnDef(7).withOption('data', 'createTime').notSortable()
        ];

        var createdRow = function (row, data) {
            $scope.records[data['id']] = data;
            $compile(angular.element(row).contents())($scope);
        };

        /**
         * Search orders
         */
        var searchRecords = function (draw, start, length) {
            return orderService.getOrderList({
                reqId: draw,
                start: start,
                rows: length,
                orderNo: $scope.orderNo,
                orderType: 1,
                customerName: $scope.customerName,
                customerPhone: $scope.customerPhone,
                customerIdNumber: $scope.customerIdNumber,
                startDate: $scope.startDate,
                endDate: $scope.endDate
            });
        };

        /**
         * Data table options definition
         */
        $scope.dtOptions = DTOptionsBuilder.newOptions().withBootstrap()
            .withOption('ajax', function (data, callback) {
                if (isInit) {
                    isInit = false;
                    $scope.records = {};
                    $scope.total = 0;
                    return callback({data: [], recordsTotal: 0, recordsFiltered: 0});
                }
                $rootScope.loadingPromise = searchRecords(data.draw, data.start,
                    data.length).success(function (res) {
                    $scope.records = {};
                    $scope.total = res.recordsTotal;
                    callback(res);
                });
            })
            .withOption('bFilter', false)
            .withOption('bLengthChange', false)
            .withDataProp('data')
            .withOption('displayLength', 10)
            .withOption('serverSide', true)
            .withPaginationType('full_numbers')
            .withOption('createdRow', createdRow)
            .withOption('order', [])
            .withOption('autoWidth', false)
            .withOption('scrollX', '100%');

        /**
         * View detail info from modal
         */
        $scope.viewItem = function (itemId) {
            orderService.setOrderId(itemId);

            var modalInstance = $modal.open({
                templateUrl: 'views/order/online-selfrun-modal.html',
                controller: 'onlineSelfRunModalController',
                backdrop: 'static'
            });

            return modalInstance.result.then(function (reply) {
                $scope.dtInstance.rerender();
            });
        };

        /**
         * Search online self-run orders
         */
        $scope.search = function () {
            $scope.dtInstance.rerender();
        };

        /**
         * Acquire dtInstance
         */
        DTInstances.getLast().then(function (dtInstance) {
            $scope.dtInstance = dtInstance;
        });
    }]);