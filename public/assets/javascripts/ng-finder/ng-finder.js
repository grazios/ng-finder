(function() {
  "use strict";
  var app;

  app = angular.module('ngFinder', ["template/ng-finder.html"]);

  app.directive("finder", function() {
    return {
      restrict: 'E',
      scope: {},
      templateUrl: 'template/ng-finder.html',
      link: function(scope, element, attr, controller) {
        return console.log("find");
      }
    };
  });

  angular.module("template/ng-finder.html", ["template/ng-finder-pipe.html", "template/ng-finder-view.html"]).run([
    "$templateCache", function($templateCache) {
      return $templateCache.put("template/ng-finder.html", "<ng-include src=\"'template/ng-finder-pipe.html'\"></ng-include>");
    }
  ]);

  angular.module("template/ng-finder-pipe.html", []).run([
    "$templateCache", function($templateCache) {
      return $templateCache.put("template/ng-finder-pipe.html", "<div>pipe!</div>");
    }
  ]);

  angular.module("template/ng-finder-view.html", []).run([
    "$templateCache", function($templateCache) {
      return $templateCache.put("template/ng-finder-view.html", "<div>view!</div>");
    }
  ]);

}).call(this);
