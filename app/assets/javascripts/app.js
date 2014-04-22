var app = angular.module('app', ['ngRoute', 'ngResource']);

app.config(function($routeProvider, $locationProvider){
	$routeProvider.
		when('/', {controller: 'CarController', templateUrl: '/templates/car/main.html'}).
		when('/teste', {controller: 'CarController', templateUrl: '/templates/car/teste.html'});
	$locationProvider.html5Mode(true);
});
