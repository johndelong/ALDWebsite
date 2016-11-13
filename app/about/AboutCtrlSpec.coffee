describe "AboutCtrl", ->
  beforeEach(module("aldwebsite.about"))

  beforeEach inject ($controller) ->
    @controllerService = $controller

  describe "about.value", ->
    beforeEach inject ->
      $scope = {}
      @controller = @controllerService('AboutCtrl', $scope: $scope)

    it "has the value 'About'", ->
      expect(@controller.value).toBe('About')
