Feature: I am able to fill in all form fields in the Practice Automation Form and the form behaves appropriately when submitted

	Scenario: I can fill in all the form with expected data types
		Given I can access the toolsqa practice automation form
		When I fill in form fields with expected data types
		Then they appear on the page correctly