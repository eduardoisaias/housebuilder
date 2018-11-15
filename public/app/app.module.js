(function(){
    'use strict';

    angular
        .module('app', [
            /*Módulos compartidos */
            'app.core', 

            /* Módulos personalizados */
            'app.components',
            'app.layout'
        ]);

}());