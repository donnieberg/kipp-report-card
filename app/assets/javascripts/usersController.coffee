app = angular.module("Users", ["ngResource"])

app.factory "User", ["$resource", ($resource) ->
  $resource("/users/:id", {id: "@id"}, {update: {method: "PUT"}})
]