'use strict';

/**
 * Copyright: 2016 FireworkStudio
 **
 * Author:  Daniel Kong
 */
adminApp.controller('dashboardController', ['$scope', '$rootScope', 'dashboardService',
    function ($scope, $rootScope, dashboardService) {

        $scope.chartWidth = $('.container').width() * 0.5;
        $scope.chartHeight = $(window).height() * 0.35;

        /**
         * Chart Type
         */
        $scope.chartType1 = 'bar';
        $scope.chartType2 = 'pie';
        $scope.chartType3 = 'line';
        $scope.chartType4 = 'pie';

        /**
         * Initialize component status
         */
        $scope.chartConfig1 = {
            labels: true,
            title: "",
            legend: {
                display: true,
                position: 'right'
            },
            innerRadius: 0,
            lineLegend: "traditional",
            colors: ['#AD8686', '#5DA3A5', '#657284', '#DDE065', '#F3A25A', '#EEA3A5']
        };

        $scope.chartConfig2 = {};
        angular.copy($scope.chartConfig1, $scope.chartConfig2);

        $scope.chartConfig3 = {};
        angular.copy($scope.chartConfig1, $scope.chartConfig3);

        $scope.chartConfig4 = {};
        angular.copy($scope.chartConfig1, $scope.chartConfig4);

        // Chart data blow are emulate values currently

        /**
         * Chart1 Data
         */
        $scope.chartData1 = {
            series: ['Online', 'Offline'],
            data: [{
                x: '10.01',
                y: [100, 200],
                tooltip: 'Online: ' + 100 + '<br>Offline: ' + 200
            }, {
                x: '10.02',
                y: [400, 300],
                tooltip: 'Online: ' + 400 + '<br>Offline: ' + 300
            }, {
                x: '10.03',
                y: [500, 700],
                tooltip: 'Online: ' + 500 + '<br>Offline: ' + 700
            }, {
                x: '10.04',
                y: [800, 500],
                tooltip: 'Online: ' + 800 + '<br>Offline: ' + 500
            }, {
                x: '10.05',
                y: [900, 800],
                tooltip: 'Online: ' + 900 + '<br>Offline: ' + 800
            }, {
                x: '10.06',
                y: [1100, 900],
                tooltip: 'Online: ' + 1100 + '<br>Offline: ' + 900
            }, {
                x: '10.07',
                y: [1200, 1300],
                tooltip: 'Online: ' + 1200 + '<br>Offline: ' + 1300
            }]
        };

        /**
         * Chart2 Data
         */
        $scope.chartData2 = {
            data: [{
                x: 'Online',
                y: [100],
                tooltip: 'Online: ' + 100
            }, {
                x: 'Offline',
                y: [400],
                tooltip: 'Offline: ' + 400
            }]
        };

        /**
         * Chart3 Data
         */
        $scope.chartData3 = {
            series: ['New User', 'Active User'],
            data: [{
                x: '10.01',
                y: [100, 200],
                tooltip: 'Online: ' + 100 + '<br>Offline: ' + 200
            }, {
                x: '10.02',
                y: [400, 300],
                tooltip: 'Online: ' + 400 + '<br>Offline: ' + 300
            }, {
                x: '10.03',
                y: [500, 700],
                tooltip: 'Online: ' + 500 + '<br>Offline: ' + 700
            }, {
                x: '10.04',
                y: [800, 500],
                tooltip: 'Online: ' + 800 + '<br>Offline: ' + 500
            }, {
                x: '10.05',
                y: [900, 800],
                tooltip: 'Online: ' + 900 + '<br>Offline: ' + 800
            }, {
                x: '10.06',
                y: [1100, 900],
                tooltip: 'Online: ' + 1100 + '<br>Offline: ' + 900
            }, {
                x: '10.07',
                y: [1200, 1300],
                tooltip: 'Online: ' + 1200 + '<br>Offline: ' + 1300
            }]
        };

        /**
         * Chart4 Data
         */
        $scope.chartData4 = {
            data: [{
                x: 'California',
                y: [300],
                tooltip: 'California: ' + 300
            }, {
                x: 'Washington',
                y: [250],
                tooltip: 'Washington: ' + 250
            }, {
                x: 'Texas',
                y: [200],
                tooltip: 'Texas: ' + 200
            }, {
                x: 'Kentucky',
                y: [150],
                tooltip: 'Kentucky: ' + 150
            }, {
                x: 'Pennsylvania',
                y: [100],
                tooltip: 'Pennsylvania: ' + 100
            }, {
                x: 'Ohio',
                y: [50],
                tooltip: 'Ohio: ' + 50
            }]
        };
    }]);