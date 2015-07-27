module = angular.module 'ALDWebsite.contact', [
  'ui.router'
]

module.config ($stateProvider) ->
  $stateProvider
    .state 'contact',
      url: '/contact'
      templateUrl: '/contact/contact.html'
