"use strict"

app = angular.module('ngFinder',[
  "template/ng-finder.html"
  ])
app.directive("finder",()->
  {
    restrict: 'E'
    scope:{
      #language: "@?"
      #list: "=?"
    }
    #controller: 'EdumaBreadCrumbController'
    templateUrl: 'template/ng-finder.html'
    link: (scope, element, attr, controller)->
      console.log "find"
  }
)


angular.module("template/ng-finder.html", [
  "template/ng-finder-pipe.html"
  "template/ng-finder-view.html"
  ]).run [
  "$templateCache"
  ($templateCache)->
    $templateCache.put("template/ng-finder.html",
    "<ng-include src=\"'template/ng-finder-pipe.html'\"></ng-include>"
    )
]

angular.module("template/ng-finder-pipe.html", []).run [
  "$templateCache"
  ($templateCache)->
    $templateCache.put("template/ng-finder-pipe.html",
    "<div>pipe!</div>"

    )
]

angular.module("template/ng-finder-view.html", []).run [
  "$templateCache"
  ($templateCache)->
    $templateCache.put("template/ng-finder-view.html",
    "<div>view!</div>"

    )
]
