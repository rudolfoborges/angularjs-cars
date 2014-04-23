app.controller('CarController', ['$scope', 'CarService', function($scope, carService){

	$scope.car = null;

	$scope.loadAll = function() {
		$scope.cars = carService.query();
	}

	$scope.loadItem = function(plate){
		$scope.frm.$setPristine();
		$scope.car = carService.get({id: plate});
	}

	$scope.new = function(){
		$scope.frm.$setPristine();
		$scope.car = "";
	}

	$scope.save = function(item){
		var car = {
			id: item.id,
			model: item.model,
			manufactorer: item.manufactorer,
			price: item.price,
			plate: item.plate,
			owner_name: item.owner_name,
			owner_email: item.owner_email,
			authenticity_token: window._token
		};
		carService.save(angular.toJson(car));
	}

	$scope.remove = function(plate){
		carService.$delete({id: plate});
	}

}]);