var demo = angular.module("demo", ['ngResource']);

demo.controller("ControllerCadastroBasico", function($scope){
    $scope.selecionarIconesSocialFacebook = true;
    $scope.selecionarIconesSocialInstagram = true;
    $scope.selecionarIconesSocialSkype = true;
    $scope.selecionarIconesSocialYoutube = true;
    $scope.selecionarIconesSocialLinkedin = true;
});

demo.controller("ControllerMenu", function($scope){
    $scope.esconderCadastroBasico = true;
	$scope.esconderCadastroCompleto = true;
	$scope.esconderCadastroUsuario = true;
	$scope.esconderFuncaoUsuario = true;
	$scope.esconderPermissaoUsuario = true;
    $scope.esconderHistoricoContato = true;
});

demo.controller("ControllerHistoricoContato", function($scope){
    
});