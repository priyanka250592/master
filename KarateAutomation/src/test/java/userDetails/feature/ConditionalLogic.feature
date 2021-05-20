Feature: Conditional logic Test

Scenario: Test for conditional logic

* def filename = 'abc' == 'abc'? 'callScenario.feature' : 'users.feature'
* print 'filename---->',filename

Scenario: Test for conditional logic

* def responseCode = 404
* def result = responseCode == 404? karate.call('callScenario.feature'): {}

* if(responseCode==200) karate.call('users.feature') 