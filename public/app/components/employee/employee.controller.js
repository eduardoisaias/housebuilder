(function(){
    'use strict';

    angular
        .module('app.components')
        .controller('EmployeeController', EmployeeController)

    EmployeeController.$inject = ['EmployeeService'];

    function EmployeeController(EmployeeService) {
        /* jshint validthis:true */
        var vm = this;
        vm.employees = [];
        vm.employee = {
            name: '',
            lastName: '',
            secondName: '',
            age: '', 
            jobTitle: ''
        };
        vm.index = 0;
        vm.action = '';
        vm.event = {
            edit: edit,
            remove: remove,
            add: add,
            accept: accept
        }

        activate();

        function activate() {
            return getEmployees().then(function() {
                console.log('Activate view Employees');
            })
        }

        function getEmployees() {
            return EmployeeService.getAll()
            .then(function(response) {
                vm.employees = response.data;
                console.log(vm.employees);
                return vm.employees;
            })
        }

        function accept() {

            switch (vm.action) {
                case 'add':
                    EmployeeService.add(vm.employee)
                        .then(function (response) {
                            console.log(response);
                            vm.employees.push(response.data);
                    });
                    break;
                case 'edit':
                    EmployeeService.update(vm.employee)
                        .then(function (response) {
                            console.log(response);
                    });
                    break;
                case 'remove':
                    EmployeeService.remove(vm.employee)
                        .then(function (response) {
                            console.log(response);
                            vm.employees.splice(vm.index, 1);
                    });
                    break;
                default:
                    break;
            }
        }

        function add(employee, action) {
            setEmployee(employee);
            setAction(action);
        }

        function edit(employee, action){
            setEmployee(employee);
            setAction(action);
        }

        function remove(employee, action, index) {
            console.log(employee);
            setEmployee(employee);
            setAction(action);
            setIndex(index);
        }

        function setEmployee(employee) {
            vm.employee = employee;
            console.log(vm.employee);
            
        }

        function setAction(action) {
            vm.action = action;
            console.log(vm.action);
            
        }

        function setIndex(index){
            vm.index = index;
            console.log(vm.index);
            
        }
    }
})();