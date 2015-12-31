describe "ContactMeCtrl:", ->
  beforeEach(module("aldwebsite.contactMe"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "contactMe.value", ->
    beforeEach inject ->
      $scope = {}
      @controller = @controllerService("ContactMeCtrl", $scope: $scope)

    it "has the value 'world'", ->
      expect(@controller.value).toBe('Contact Me')
