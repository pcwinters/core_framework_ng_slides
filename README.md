Angular Basics for Core Component Working Group
===============================================
```
npm install
./node_modules/.bin/bower install
./node_modules/.bin/grunt
open ./dist/index.html
```

Built with impress.js

Purpose

Things people are particularly interested about:

1. What are the performance characteristics of Angular
2. How are dependencies required and built
3. Which css pre-compiling tools are used and how this interacts with other Rally stylesheets
4. What kind of implementation pitfalls have Angular devs experienced
5. What kind of APIs do you think you need for further integration into ALM?

Slides
* Basics
  * $scope - application data model and event system
    * $rootScope - application starting point
    * $scope.$new - forking children
    * $scope siblings - inheritance and isolation
    * $scope and dom - every element linked to a scope
      * ng-controller - forks a new scope
      * ng-repeat - forks a new scope and repeats elements
      * heirarchical context
  * $scope.$watch - how applications and directives get notified of $scope changes
    * listeners - invoked with new/old result of expression
    * expressions - expressions evaluated in the context of a scope
      * ex w/ function
  * $scope.$digest - dirty checking
    * $$phase cycle - while loop, evaluates expressions
    * $digest performs checks on all children

* Performance
  * $watch and $digest
    * $digest vs $apply - evaluates watched expression for self and all child scopes
    * $apply - invokes a $digest at $rootScope
      * ng services and directives - almost always use $apply, click example  
    * bindonce - live jsfiddle example
    
  * ng-repeat - loops over collections
    * $$hashKey
    * track by

* dependencies
  * node/bower app
  * ng module system
    * configuration phase vs runtime

* Pitfalls
  * $scope prototypical inheritance

* CSS
  * Manipulating pure DOM, standard css

* APIs and Integration
  * lifecycle and config phase
    * $rally service, context
    * event-bus
  * overmind for application isolation

