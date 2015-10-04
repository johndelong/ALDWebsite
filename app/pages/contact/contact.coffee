module = angular.module 'ALDWebsite.contact', [
  'ui.router'
]

module.config ($stateProvider) ->
  $stateProvider
    .state 'contact',
      url: '/contact'
      templateUrl: '/pages/contact/contact.html'
      controller: 'ContactCtrl as ngContactCtrl'
