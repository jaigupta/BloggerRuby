# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require angular.min
//= require ui-bootstrap-angular

# initalize the sidebar using jquery
$("#menu-toggle").click((e) ->
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    );

class Todo
  constructor: (@id, @data, @assignee, @status, @shortView = true) ->


angular.module("myapp", ['ui.bootstrap'])

.filter('bugFilter', ->
  return (todoList, assignee='', status='', val='') ->
    out = []
    for todo in todoList
      if todo.assignee.indexOf(assignee) < 0 || todo.status.indexOf(status) < 0
        continue
      flag = true
      for token in val.split(" ")
        console.log 'checking for' + token + "in"+todo.data
        if todo.data.indexOf(token) < 0
          flag = false
      if flag
        out.push(todo)
    return out
)
.controller("HomeController", ['$scope', 'TodoService', ($scope, todoService) ->
  $scope.todoList = todoService.getTodoList();
  # This list is used for auto complete
  $scope.teamMembers = todoService.getTeamMembers();
  # This list is used for auto compelte
  $scope.bugStatusList = ['open', 'fixed', 'assigned']
  # This is the todo shown on the right panel
  $scope.focusedTodo = new Todo(0, "Sample todo", 'unassiged', 'fixed')

  $scope.focusTodo = (e)->
    todoService.focusTodo($scope.todoList, $(e.toElement).parent().data('bugId'), $scope)
    $("#wrapper").removeClass("toggled");
])

.service('TodoService', ['$http', ($http) ->
  # $http.get('http://google.com'); # Just for testing purposes, no need to fetch google
  # return
  getTodoList: ->
    return [
      new Todo(1, 'This is the first todo', 'jaigupta', 'open');
      new Todo(2, 'This is the second todo', 'jaigupta', 'open');
      new Todo(3, 'This is the first todo', 'jaigupta', 'fixed');
      new Todo(4, 'This was the first todo', 'deepak', 'open');
      new Todo(5, 'This is the first todo', 'akash', 'fixed');
      new Todo(6, 'This was the second todo', 'harsh', 'assigned');
      new Todo(7, 'This is the first todo', 'harsh', 'open');
      new Todo(8, 'This could be the third todo', 'aksh', 'fixed');
    ]
  getTeamMembers: ->
    return [
      'jaigupta',
      'jasmine',
      'deepak',
      'akash',
      'harsh'
    ]
  focusTodo: (todoList, id, $scope) ->
    for todo in todoList
      if todo.id == id
        $scope.focusedTodo = $.extend(true, {}, todo)
        break
    # Asynchronously fetch the actual todo and update the focusedTodo
    # $http.get('')

  updateFocusedTodo: ->
    return {}
]);
