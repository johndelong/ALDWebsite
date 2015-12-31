angular.module('aldwebsite.contactMe')
.controller 'ContactMeCtrl', ($http) ->

  @value = "Contact Me"
  @data = {}

  @submit = ->
    Parse.Cloud.run('contactMe',
      firstName: @data.first_name
      lastName: @data.last_name
      email: @data.email
      subject: @data.subject
      message: @data.message
    ).then (response) ->
      console.log response
      return


    # console.log('Sending contact message...')
    # $http.post(
    #   'https://3dwtmgjgrg.execute-api.us-east-1.amazonaws.com/prod/contactMe',
    #   @data
    #   ).then ((response) ->
    #     console.log('Message was sent!')
    #     console.log(response)
    #     return
    # ), (response) ->
    #   console.error('Error sending message!')
    #   console.error(response)
    #   return

  return this
