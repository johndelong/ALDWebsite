describe "HomePageCtrl:", ->
  beforeEach(module("aldwebsite.homePage"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "homePage.value", ->
    beforeEach inject ->
      @controller = @controllerService "HomePageCtrl"

    it "has the value 'world'", ->
      expect(@controller.value).toBe('Home Page')
