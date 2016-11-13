angular.module('aldwebsite.contactMe')
.controller 'ContactMeCtrl', ($http, $scope) ->

  @value = "Contact Me"
  $scope.showForm = true
  $scope.data = {}

  @sendForm = ->
    $http(
      method: 'POST'
      url: '//formspree.io/amanda@patriot-realty.net'
      data:
        name: $scope.data.first_name + ' ' + $scope.data.last_name
        phone: $scope.data.phone
        email: $scope.data.email
        _subject: 'Real Estate Inquiry'
        message: $scope.data.message
      dataType: 'json'
    ).then ((response) ->
      # this callback will be called asynchronously
      # when the response is available
      $scope.showForm = false
      $scope.submitStatus = "Thank you for your email! " +
      "I'll be in contact with you shortly."

      console.log response
      $scope.$digest()

    ), (response) ->
      # called asynchronously if an error occurs
      # or server returns response with an error status.
      $scope.showForm = true
      $scope.submitStatus = "There was a problem sending the email. If you " +
      "continue to receive this message, feel free to email directly at " +
      "amanda@patriot-realty.net."

      console.error 'Request failed with response code ' + httpResponse.status
      $scope.$digest()

  return this
