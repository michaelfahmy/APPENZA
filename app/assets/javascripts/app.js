var app = angular.module('store', []);

app.controller('jsController', ['$scope', '$http', function($scope, $http) {
			$http.get('http://localhost:3000/users.json')
			.then(function(res){
				$scope.users = res.data;
			});
}]);
