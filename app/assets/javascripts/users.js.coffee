$(document).on "click", ".userlogin", ->
  $("#new_user_session").submit()

$(document).on "click", ".usersignup", ->
  $.post('/users', $('#new_user').serialize(),
  	(data, status) ->
      if data.match('Uh-oh, there was')
      	#TODO: Probably want to make this better later...
        console.log('WAHHHHH!!')
      else
        window.location='/events'
  )

$(document).on "click", ".newpass", ->
  $("#new_pass").submit()

angular.module('Simmr').controller "UserRegisterCtrl", ["$scope",  "$routeParams", "$location", ($scope, $routeParams, $location) ->

]