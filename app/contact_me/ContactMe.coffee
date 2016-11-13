angular.module 'aldwebsite.contactMe', [
  'ui.router'
]

angular.module('aldwebsite.contactMe').config ($stateProvider) ->
  $stateProvider
    .state 'contactMe',
      url: '/contact-me'
      templateUrl: '/contact_me/contact_me.html'
      controller: 'ContactMeCtrl as contactMe'
