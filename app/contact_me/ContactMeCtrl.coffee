angular.module('aldwebsite.contactMe')
.controller 'ContactMeCtrl', ($http, $scope) ->

  @value = "Contact Me"
  $scope.showForm = true
  $scope.data = {}

  @submit = ->
    $scope.submitStatus = "Sending..."
    Parse.Cloud.run('contactMe',
      firstName: $scope.data.first_name
      lastName: $scope.data.last_name
      email: $scope.data.email
      subject: $scope.data.subject
      message: $scope.data.message
    ).then ((response) ->
      # success
      $scope.showForm = false
      $scope.submitStatus = "Thank you for your email! " +
      "I'll be in contact with you shortly."

      console.log response
      $scope.$digest()
    ), (httpResponse) ->
      # error
      $scope.showForm = true
      $scope.submitStatus = "There was a problem sending the email. If you " +
      "continue to receive this message, feel free to email directly at " +
      "amandalynndelong@grar.com."

      console.error 'Request failed with response code ' + httpResponse.status
      $scope.$digest()

  return this
