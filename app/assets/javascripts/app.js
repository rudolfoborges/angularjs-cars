var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(function($routeProvider){
	$routeProvider.
	when('/', {controller: 'CarController', templateUrl: '/templates/car/main.html'});

});
