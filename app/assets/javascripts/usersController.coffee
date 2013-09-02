app = angular.module("AngularUsers", ["ngResource"])

app.factory "User", ["$resource", ($resource) ->
  $resource("/users/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@AngularUsersCtrl = ["$scope", "User", "Student", ($scope, User, Student) ->
  $scope.users = User.query()
  $scope.students = Student.query()
]