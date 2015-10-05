describe "AboutCtrl:", ->
  beforeEach(module("aldwebsite.about"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "about.value", ->
    beforeEach inject ->
      @controller = @controllerService "AboutCtrl"

    # it "has the value 'About'", ->
    #   expect(@controller.value).toBe('About')
