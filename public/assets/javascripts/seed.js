(function() {
  "use strict";
  var app;

  app = angular.module('seedApp', ["ngFinder"]);

  app.controller("SeedController", [
    "$scope", function($scope) {
      $scope.body = "hoge";
      return console.log("holaaa");
    }
  ]);

}).call(this);
