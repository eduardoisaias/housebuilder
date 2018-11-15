(function(){
    'use strict';
    
    angular
    .module('app.services')
    .factory('EmployeeService', EmployeeService)
    
    EmployeeService.$inject = ['$http'];
    
    function EmployeeService($http) {
        const host = 'http://localhost:51555';
        var service = {
            getAll : getAll,
            getById : getById,
            add: add,
            update : update,
            remove : remove
        };

        return service;

        
        function getAll() {
            return $http.get(`${host}/api/employees`)
            .then(getEmployeeCompleted)
            .catch(getEmployeFailded);
        }
        function getById(employee) { 
           return $http.get(`${host}/api/employees/${employee.id}`)
            .then(getEmployeeCompleted)
            .catch(getEmployeFailded);
        }
        function add(employee) {
            return $http.post(`${host}/api/employees`, employee)
            .then(getEmployeeCompleted)
            .catch(getEmployeFailded);
        }
        function update(employee) { 
            return $http.put(`${host}/api/employees`, employee)
            .then(getEmployeeCompleted)
            .catch(getEmployeFailded);
        }
        function remove(employee) {
            return $http.delete(`${host}/api/employees/${employee.id}`)
            .then(getEmployeeCompleted)
            .catch(getEmployeFailded);
         }

        function getEmployeeCompleted(result) {
            console.log(result);
            return result;
        }

        function getEmployeFailded(error) {
            console.log(error);
        }
    }
})();