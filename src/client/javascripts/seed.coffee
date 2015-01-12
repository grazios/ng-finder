"use strict"

app = angular.module('seedApp',[
  "ngFinder"
  ])

app.controller("SeedController",[
  "$scope"
  ($scope)->
    $scope.body = "hoge"
    console.log "holaaa"
  ])
