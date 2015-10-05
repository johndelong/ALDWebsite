describe "ContactMeCtrl:", ->
  beforeEach(module("aldwebsite.contactMe"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "contactMe.value", ->
    beforeEach inject ->
      @controller = @controllerService "ContactMeCtrl"

    # it "has the value 'world'", ->
    #   expect(@controller.value).toBe('Contact Me')
