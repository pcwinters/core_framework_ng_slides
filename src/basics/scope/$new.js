angular.module('myApp', []).run(function($rootScope){
	$rootScope.appName = 'myApp';
	$childScope = $rootScope.$new();
	expect($childScope.appName).toEqual('myApp');
	expect($childScope).not.toEqual($rootScope);
});
