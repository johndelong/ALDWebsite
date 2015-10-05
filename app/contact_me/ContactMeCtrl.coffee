angular.module('aldwebsite.contactMe')
.controller 'ContactMeCtrl', ($scope, $http) ->

  @value = "Contact Me"
  
  $scope.master = {}

  $scope.update = (data) ->
    $scope.master = angular.copy(data);
    $scope.master.body = '<pre>' + $scope.master.name + '</pre><pre>' + $scope.master.email + '</pre>'

  $scope.reset = ->
    $scope.data = angular.copy($scope.master);
    
  $scope.submit = ->
    # $scope.master.body = '<pre>' + $scope.master.name + '</pre><pre>' + $scope.master.email + '</pre>'
    $http.post('https://3dwtmgjgrg.execute-api.us-east-1.amazonaws.com/prod/contactMe', $scope.master)

  return this
