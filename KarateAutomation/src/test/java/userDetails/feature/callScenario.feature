Feature: Calling Scenario from same and different feature files

@tag1
Scenario: scenario 1

* print 'First Scenario'

@tag2
Scenario: scenario 2

* print 'Second Scenario'
* print 'Calling Scenario from same feature file'
* def callScene = call read('callScenario.feature@tag1')


* print 'Calling Scenario from other feature file'
* def callScene2 = call read('allUsers.feature@tag1')