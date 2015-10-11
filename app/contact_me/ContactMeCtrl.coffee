angular.module('aldwebsite.contactMe')
.controller 'ContactMeCtrl', ($http) ->

  @value = "Contact Me"

  @data = {}

  @submit = ->
    console.log('Sending contact message...')
    # $scope.master.body = '<pre>' + $scope.master.name + '</pre><pre>' + $scope.master.email + '</pre>'
    $http.post('https://3dwtmgjgrg.execute-api.us-east-1.amazonaws.com/prod/contactMe', @data).then ((response) ->
      console.log('Message was sent!')
      console.log(response)
      return
    ), (response) ->
      console.error('Error sending message!')
      console.error(response)
      return

  return this
