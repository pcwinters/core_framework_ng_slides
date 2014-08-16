angular.module('myApp', []).run(function($rootScope){
	$rootScope.appName = 'myApp';
	$childScopes = [$rootScope.$new(), $rootScope.$new()]
	_.each($childScopes, function($scope, i){
		$scope.$index = i;
	});

	expect($rootScope.$index).toBeUndefined();
	_.each($childScopes, function($scope){
		expect($scope.appName).toEqual('myApp');
	});
	expect(_.pluck($childScopes, '$index')).toEqual([0,1])
});
