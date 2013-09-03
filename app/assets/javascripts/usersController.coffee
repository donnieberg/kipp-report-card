app = angular.module("AngularUsers", ["ngResource"])

app.factory "User", ["$resource", ($resource) ->
  $resource("/users/:id", {id: "@id"},
    update:
        method: "PUT"
    )
]

@AngularUsersCtrl = ["$scope", "User", "$http", ($scope, User, $http) ->
  users = User.query ->
    $scope.users = users
    $http.get('/get_users_by_admin')
      .success (result) ->
        $scope.admin_users = result
    $http.get('/get_students_by_school')
      .success (result) ->
        $scope.students = result
]

