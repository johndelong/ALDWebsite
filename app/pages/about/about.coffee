module = angular.module 'ALDWebsite.about', [
  'ui.router'
]

module.config ($stateProvider) ->
  $stateProvider
    .state 'about',
      url: '/about'
      templateUrl: '/pages/about/about.html'
