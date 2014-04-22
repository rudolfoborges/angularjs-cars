app.factory('CarService', function($resource){
	return $resource('/cars/:id', {plate:'@id'});
});