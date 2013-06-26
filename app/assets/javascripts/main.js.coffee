Simmr = angular.module('Simmr', ['uiSlider', 'ngResource', 'rails', 'ui', 'ui.bootstrap'])
Simmr.factory "Charge", ["railsResourceFactory", (railsResourceFactory) ->
  railsResourceFactory
    url: "/api/charges"
    name: "charge"
]

Simmr.factory "Event", ["railsResourceFactory", (railsResourceFactory) -> railsResourceFactory
    url: "/api/events"
    name: "event"
]

Simmr.factory "Campaign", ["railsResourceFactory", (railsResourceFactory) ->
  railsResourceFactory
    url: "/api/campaigns"
    name: "campaign"
]

Simmr.controller "EventRegisterCtrl", ["$scope",  "$routeParams", "$location", "Charge", "Event", ($scope, $routeParams, $location, Charge, Event) ->
  $scope.guests = []

  $scope.guest = {}
  $scope.guest.name = ''
  $scope.guest.email = ''
  $scope.buyer = {}
  $scope.buyer.name = ''
  $scope.buyer.ccNumber = ''
  $scope.buyer.ccSecCode = ''
  $scope.buyer.ccExpMonth = ''
  $scope.buyer.ccExpYear = ''
  $scope.buyer.billingAddress = ''
  $scope.buyer.billingCity = ''
  $scope.buyer.billingState = ''
  $scope.buyer.billingZip = ''
  
  $scope.total = ->
    total = $scope.num_guests * $scope.cost
    total = total.toFixed(2)

  $scope.showPayment = ->
    $scope.guests = []
    $scope.guests_left = $scope.num_guests
    $scope.guest_pages = 0
    if $scope.num_guests > 0
      $scope.currentUser.name = $scope.currentUser.first_name + ' ' + $scope.currentUser.last_name
      $scope.guests.push($scope.currentUser)
      i = 0
      if $scope.num_guests % 3 == 0 
        $scope.guest_pages = $scope.num_guests / 3
      else
        $scope.guest_pages = $scope.num_guests / 3 + 1
      
#      j=0
#      while j<$scope.guest_pages
        while i < $scope.guests_left - 1 and i < 2
          $scope.guests.push({})
          i++
        $scope.guests_left -= 3

      $scope.payment = 1

    else
      alert 'Please select number of seats!'
    # TODO: Make this error message appear inline somewhere instead of as an alert

  $scope.gotoPayment = ->
    error = 0
    angular.forEach($scope.guests, (guest) =>
      if guest.name == "" or guest.email == ""
        error = 1
      if typeof guest.name is 'undefined' or typeof guest.email is 'undefined'
        error = 1
    )
    if error == 0
      $scope.payment = 2 
    else
      alert "Please enter the name and email addresses of all of the guests."
    # TODO: Make this error message appear inline somewhere instead of as an alert

  $scope.submitPayment = ->
    if $scope.buyer.name == ''
    	$scope.buyer.nameError = true
    else
    	$scope.buyer.nameError = false

    if $scope.buyer.ccNumber == ''
    	$scope.buyer.ccNumberError = true
    else
    	$scope.buyer.ccNumberError = false

    if $scope.buyer.ccSecCode == ''
    	$scope.buyer.ccSecCodeError = true
    else
    	$scope.buyer.ccSecCodeError = false

    if $scope.buyer.ccExpMonth == ''
    	$scope.buyer.ccExpMonthError = true
    else
    	$scope.buyer.ccExpMonthError = false

    if $scope.buyer.ccExpYear == ''
    	$scope.buyer.ccExpYearError = true
    else
    	$scope.buyer.ccExpYearError = false

    if $scope.buyer.billingAddress == ''
    	$scope.buyer.billingAddressError = true
    else
    	$scope.buyer.billingAddressError = false

    if $scope.buyer.billingCity == ''
    	$scope.buyer.billingCityError = true
    else
    	$scope.buyer.billingCityError = false

    if $scope.buyer.billingState == ''
    	$scope.buyer.billingStateError = true
    else
    	$scope.buyer.billingStateError = false

    if $scope.buyer.billingZip == ''
    	$scope.buyer.billingZipError = true
    else
    	$scope.buyer.billingZipError = false
    
    $scope.submitCard($scope.card)
  
  $scope.card =
    number: ""
    expMonth: ''
    expYear: ''
    cvc: ''
  $scope.data = {}
  $scope.submitCard = (card) ->
    Stripe.createToken card, (status, response) ->
      if status is 200
        console.log response
        $scope.data.last4 = response.card.last4
        $scope.data.token = response.id
        $scope.data.guests = $scope.guests
        $scope.data.buyer = $scope.buyer
        new Charge($scope.data).create().then (data) =>
          console.log data, "~~~~~~~~~~"
          if data.status == "Success"
            $scope.payment = 3
      else
        console.log response
]

Simmr.controller "EventCreateCtrl", ["$scope",  "$routeParams", "$location", "Event", ($scope, $routeParams, $location, Event) ->

  $scope.createEvent = (event) ->
    alert "fjkfhj"
    new Event(event).create().then (data) =>
      console.log data, "~~~~~~~~~~"

]

Simmr.controller "EventFeedbackCtrl", ["$scope",  "$routeParams", "$location", ($scope, $routeParams, $location) ->

]

Simmr.controller "ProfileEditCtrl", ["$scope",  "$routeParams", "$location", ($scope, $routeParams, $location) ->

]