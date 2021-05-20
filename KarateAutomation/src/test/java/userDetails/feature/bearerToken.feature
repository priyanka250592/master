Feature: Authentication with Bearer Token

Background:  
* url 'https://gorest.co.in/public-api'
* def reqPost = read ("input.json")
* def accessToken = '75eb7d52200c6dbff9a3c3167595621bfed1b9c7acae4dc59a747f03e0374b4f'
* def result = call read("randomString.feature")
* def email = result.randomStr

Scenario: Create new User with existing email is,then response should be email is already taken

Given path 'users'
* header Authorization = 'Bearer ' + accessToken

And request reqPost.data1

When method POST
Then status 200
Then print response

Scenario: Create new User with the new email id using random string generator

Given path 'users'
* header Authorization = 'Bearer ' + accessToken
* set reqPost.email = email + '@like.com'
And request reqPost

When method POST
Then status 200
Then print response


Scenario: Retrieve User details

Given path 'users'

When method GET
Then status 200
Then print 'User details:',response



 