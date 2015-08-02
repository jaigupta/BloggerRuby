# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap

# List down all the required coffee scripts. here is user for example
//= require user 

angular.module("myapp", [])
    .controller("HomeController", ($scope) ->
      $scope.helloTo =
        title: 'DJW'
    );
