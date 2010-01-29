Feature: Welcome

  In order to welcome people to my web site
  As a visitor
  I want to see a welcome page containing general information about the site

	Scenario: Welcome new visitors with no contents
	
  	Given I have not visited the site
  	When I enter the welcome page
  	Then I should see a "Pas d'articles pour le moment" message
		Then I should see a "Pas d'événements à venir pour le moment" second message
		
	Scenario: Welcome new visitors with contents
	
		Given I have not visited the site
		And the site has contents
		Then I should see the 4 most recent articles
		And I should see the next 4 events
		And I should have 4 articles
	
	Scenario: Recent articles list
		Given I am on the root page
		And the site has contents
		When I follow a recent article link
		Then I should be on the article show page
		
	# Scenario: Next event list
	# 	Given I am "root_url" page
	# 	And the site has contents
	# 	When I click on a next event link
	# 	Then I should go to the event show page