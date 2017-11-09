Feature: I am able to post an image on Tumblr

	Scenario: I can get to the login page
		Given I am on the Tumblr homepage
		When I click on the login button
		Then I am redirected to the login page

	Scenario: I can log in
		Given I am on the login page
		When I fill in the relevant fields
		Then I am logged in

	Scenario: I can get to the image form
		Given I am on the dashboard
		When I click on photo icon
		Then I am on the photo form

	Scenario: I can put a url into the image form
		Given I am on the image form
		When I click on add photo from web and write a url
		Then The url has been put into the form