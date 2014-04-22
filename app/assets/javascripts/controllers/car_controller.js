app.controller('CarController', ['$scope', 'CarService', function($scope, carService){

	$scope.car = null;

	$scope.loadAll = function() {
		$scope.cars = carService.query();
	}

	$scope.loadItem = function(plate){
		$scope.car = carService.get({id: plate});
	}

	$scope.new = function(){
		$scope.car = [];
	}

	$scope.save = function(){

	}

}]);