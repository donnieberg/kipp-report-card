app = angular.module("AngularUsers", ["ngResource"])

app.factory "User", ["$resource", ($resource) ->
  $resource("/users/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@AngularUsersCtrl = ["$scope", "User", ($scope, User) ->
  $scope.users = User.query()
  $scope.students = Student.query()
]